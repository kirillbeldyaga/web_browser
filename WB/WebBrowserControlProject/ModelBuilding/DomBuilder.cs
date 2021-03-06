﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using WBCore;
using WBCore.DocumentObjectModelClasses;
using WebBrowserConrolProject.ModelBuilding.HtmlBuilders;
namespace WebBrowserConrolProject.ModelBuilding
{

	public class DomBuilder
	{
		public Dictionary<string, ITagBuilder> BuilderMap = new Dictionary<string, ITagBuilder>();
		ITagBuilder TagBuilder { get; set; }
		DocumentObjectModel Model
		{
			get; set;
		} = new DocumentObjectModel();
        public DomBuilder()
        {

        }
		public DomBuilder(DocumentObjectModel model)
		{
			Model = model;
		}
		public void BuildModel()
		{
			BuildElement(Model.Root);
		}
        public void BuildElement(Element element)
        {
            string type = "WB.Builders." + element.GetType().Name + "Builder";
            if (BuilderMap.ContainsKey(type))
            {
                TagBuilder = BuilderMap[type];
            }
            else
            {
                Type TagType = Type.GetType(type, false, true);
                if (TagType != null)
                {
                    ConstructorInfo ci = TagType.GetConstructor(
                        new Type[] { });
                    object Obj = ci.Invoke(new object[] { });
                    TagBuilder = Obj as ITagBuilder;
                    BuilderMap.Add(type, TagBuilder);// Obj as ITagBuilder);
                }
                else
                {

                }
            }
            TagBuilder?.Build();

			element.Children.ToList().ForEach(p => BuildElement(p));
        }
    }
}
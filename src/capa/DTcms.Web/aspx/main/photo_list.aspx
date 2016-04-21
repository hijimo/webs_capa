<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 16/4/20 下午7:00:26.
		本页面代码由DTcms模板引擎生成于 16/4/20 下午7:00:26. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "photo";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" rel=\"stylesheet\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n  <div class=\"header_logo\">\r\n    <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">\r\n        <span class=\"header_logo_img\"></span><br/>\r\n        <span class=\"header_logo_txt\">CAPA TOOLS CO.,LIMITED</span>\r\n    </a>\r\n  </div>\r\n  <a class=\"alibaba\">\r\n  <!-- ALIBABA.COM TRADE ASSURANCE CODE BEGIN -->\r\n<script id=\"ali-ta-embed-script\" src=\"//u.alicdn.com/js/5v/run/ta/embed.js?e=360\" type=\"text/javascript\" data-token=\"ID1t_vtHmE4fgz-DOP7DfDV05L5Nof58_pLv2iyumXlRag*\" ></");
	templateBuilder.Append("script>\r\n<!-- ALIBABA.COM TRADE ASSURANCE CODE END -->\r\n  </a>\r\n  <div class=\"header_wrap\">\r\n    <ul class=\"header_menu\">\r\n      <li class=\"header_menu_itm before1\"><a href=\"");
	templateBuilder.Append(linkurl("product_list",0));

	templateBuilder.Append("\">Products</a>\r\n        <ul class=\"sub_menu\">\r\n            ");
	DataTable categoryList_header = get_category_child_list("product",0);

	foreach(DataRow dr in categoryList_header.Rows)
	{

	templateBuilder.Append("\r\n                    \r\n                    <li class=\"sub_menuitm\">\r\n                        <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("product_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                    " + Utils.ObjectToStr(dr["title"]) + "\r\n                        </a>\r\n                    </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </li>\r\n      <li class=\"header_menu_itm\"><a href=\"");
	templateBuilder.Append(linkurl("aboutus"));

	templateBuilder.Append("\">About US</a></li>\r\n      <li class=\"header_menu_itm\"><a href=\"");
	templateBuilder.Append(linkurl("news_list",0));

	templateBuilder.Append("\">News</a></li>\r\n      <li class=\"header_menu_itm\"><a href=\"");
	templateBuilder.Append(linkurl("down_list,0"));

	templateBuilder.Append("\">Download</a></li>\r\n      <li class=\"header_menu_itm\"><a href=\"");
	templateBuilder.Append(linkurl("contact"));

	templateBuilder.Append("\">Contact US</a></li>\r\n      <li class=\"header_menu_itm\"></li>\r\n    </ul>\r\n    <div class=\"header_searchs right\">\r\n      <input type=\"text\" value=\"\" placeholder=\"Search Products\" class=\"search_input\">\r\n      <span class=\"header_search_btn\"></span>\r\n    </div>\r\n    <div class=\"clearfix\"></div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"section clearfix\">\r\n  \r\n  <div class=\"ntitle\">\r\n    <h2>\r\n      <a href=\"javascript:;\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("<em></em></a>\r\n    </h2>\r\n    <p>\r\n      <!--小类-->\r\n      ");
	DataTable bcategoryList = get_category_child_list(channel,category_id);

	int cdr2__loop__id=0;
	foreach(DataRow cdr2 in bcategoryList.Rows)
	{
		cdr2__loop__id++;


	if (cdr2__loop__id==1)
	{

	templateBuilder.Append("\r\n      <a class=\"no-bg\" href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n      <!--小类-->\r\n    </p>\r\n    ");
	string category_nav = get_category_menu("photo_list", category_id);

	templateBuilder.Append("\r\n    <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</span>\r\n  </div>\r\n  \r\n  <div class=\"wrapper auto clearfix\">\r\n    <ul class=\"img-list high ilist\">\r\n      ");
	DataTable photoList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "photo_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n      ");
	foreach(DataRow dr in photoList.Rows)
	{

	templateBuilder.Append("\r\n      <li>\r\n        <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("photo_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n          <span class=\"abs-bg\"></span>\r\n          <span class=\"txt1\">" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n          <span class=\"txt2\">\r\n            <i>阅读：" + Utils.ObjectToStr(dr["click"]) + "次</i>\r\n            <p>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</p>\r\n          </span>\r\n          <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" />\r\n        </a>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    <!--页码列表-->\r\n    <div class=\"page-box\">\r\n      <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n    </div>\r\n    <!--/页码列表-->\r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer_content\">\r\n    \r\n    <div class=\"footer_conent_part\">\r\n        <div class=\"footer_content_part_title\">Products</div>\r\n        <ul class=\"footer_content_part_body\">\r\n            \r\n            ");
	DataTable categoryList_footer = get_category_child_list("product",0,7);

	foreach(DataRow dr in categoryList_footer.Rows)
	{

	templateBuilder.Append("\r\n                    \r\n                    <li class=\"footer_part_li\">\r\n                        <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("product_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                    " + Utils.ObjectToStr(dr["title"]) + "\r\n                        </a>\r\n                    </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n       </ul>\r\n    </div>\r\n    <div class=\"footer_conent_part\">\r\n      \r\n        <div class=\"footer_content_part_title\">News</div>\r\n        <ul class=\"footer_content_part_body\">\r\n          ");
	DataTable categoryList_footer2 = get_category_child_list("news",0,7);

	foreach(DataRow dr in categoryList_footer2.Rows)
	{

	templateBuilder.Append("\r\n                    \r\n                    <li class=\"footer_part_li\">\r\n                        <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n                            " + Utils.ObjectToStr(dr["title"]) + "\r\n                        </a>\r\n                    </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <div class=\"footer_conent_part\">\r\n      \r\n        <div class=\"footer_content_part_title\">Contacts</div>\r\n        <ul class=\"footer_content_part_body\">\r\n          <li class=\"contactitm\"><i></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append("</li>\r\n          <li class=\"contactitm\"><i></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("</li>\r\n          <li class=\"contactitm\"><i></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</li>\r\n        </ul>\r\n    </div>\r\n\r\n\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <span>Copyright &copy; 2013-2016 CAPA Tools Co.,Limted. ICP:浙12345</span>\r\n    <a href=\"\" class=\"icn_youtube right mt10\"></a>\r\n    <a href=\"\" class=\"icn_facebook right mt10\"></a>\r\n    \r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>

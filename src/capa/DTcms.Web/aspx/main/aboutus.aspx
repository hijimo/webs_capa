<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 16/4/22 下午4:09:40.
		本页面代码由DTcms模板引擎生成于 16/4/22 下午4:09:40. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "aboutus";

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style1.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/about.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/animate.min.css\">\r\n</head>\r\n\r\n<body>\r\n\r\n   <div class=\"main about\">\r\n    <div class=\"wrap\">\r\n      <div class=\"content\">\r\n        <!--Header-->\r\n        ");

	templateBuilder.Append("<script type=\"text/javascript\">\r\n    function SiteSearch(send_url, divTgs, channel_name) {\r\n        var strwhere = \"\";\r\n        if (channel_name !== undefined) {\r\n            strwhere = \"&channel_name=\" + channel_name\r\n        }\r\n        var str = $.trim($(divTgs).val());\r\n        if (str.length > 0 && str != \"输入关健字\") {\r\n            window.location.href = send_url + \"?keyword=\" + encodeURI($(divTgs).val()) + strwhere;\r\n        }\r\n        return false;\r\n    }\r\n\r\n</");
	templateBuilder.Append("script>\r\n<div class=\"header\">\r\n  <div class=\"header_logo\">\r\n    <a href=\"");
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

	templateBuilder.Append("\">Contact US</a></li>\r\n      <li class=\"header_menu_itm\"></li>\r\n    </ul>\r\n    <div class=\"header_searchs right\">\r\n      <input type=\"text\" value=\"\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\"x-webkit-speech=\"\" id=\"keywords\" placeholder=Search Products\"  class=\"search_input\">\r\n      <span class=\"header_search_btn\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" ></span>\r\n    </div>\r\n    <div class=\"clearfix\"></div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n        <!--/Header-->\r\n          <div class=\"content_body \">\r\n            <section class=\"about_section1\">\r\n                <p class=\"about_part_title\">About Us</p>\r\n                <div class=\"about_img_list\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about1.png\" class=\"about_img_1 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about2.png\" class=\"about_img_2 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about3.png\" class=\"about_img_3 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about4.png\" class=\"about_img_4 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about5.png\" class=\"about_img_5 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about6.png\" class=\"about_img_6 tj_lazy\">\r\n                    <img data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about7.png\" class=\"about_img_7 tj_lazy\">\r\n                </div>\r\n            </section>\r\n            <section>\r\n                <p class=\"aboutus_txt\">\r\n                    CAPA TOOLS is the premier manufacturer, focus on automotive refinishing industry in China. We design and manufacture tools to meet the needs of the most demanding professionals. Over the years, CAPA has dedicated itself to producing high performance products and providing professional service, to build business relations with customers from more than 15 countries and regions worldwide.\r\n                </p>\r\n            </section>\r\n            \r\n            <section>\r\n                <p class=\"about_part_title\">Our Market</p>\r\n                <img class=\"aboutus_map tj_lazy\" data-original=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/aboutus_map.png\" />\r\n            </section>\r\n            <section class=\"about_partners\">\r\n                <p class=\"about_part_title\">Our Partners</p>\r\n                <ul class=\"about_partners_list\">\r\n                    <li class=\"about_partners_itm\"></li>\r\n                    <li class=\"about_partners_itm\"></li>\r\n                    <li class=\"about_partners_itm\"></li>\r\n                </ul>\r\n            </section>\r\n             \r\n            \r\n          </div>\r\n        <!--Footer-->\r\n        ");

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

	templateBuilder.Append("\r\n        </ul>\r\n    </div>\r\n    <div class=\"footer_conent_part\">\r\n      \r\n        <div class=\"footer_content_part_title\">Contacts</div>\r\n        <ul class=\"footer_content_part_body\">\r\n          <li class=\"contactitm\"><i class=\"icn_font icn_locate\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.address));
	templateBuilder.Append("</li>\r\n          <li class=\"contactitm\"><i class=\"icn_font icn_phone\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.tel));
	templateBuilder.Append("</li>\r\n          <li class=\"contactitm\"><i class=\"icn_font icn_email\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(site.email));
	templateBuilder.Append("</li>\r\n        </ul>\r\n    </div>\r\n\r\n\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <span>Copyright &copy; 2013-2016 CAPA Tools Co.,Limted. ");
	templateBuilder.Append(Utils.ObjectToStr(site.crod));
	templateBuilder.Append("</span>\r\n    <a href=\"\" class=\"icn_youtube right mt10\"></a>\r\n    <a href=\"\" class=\"icn_facebook right mt10\"></a>\r\n    \r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n        <!--/Footer-->\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.9.0.min.js\"></");
	templateBuilder.Append("script>\r\n   <script type=\"text/javascript\">\r\n    $(\".tj_lazy\").lazyload({ effect: \"fadeIn\" });\r\n   </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>

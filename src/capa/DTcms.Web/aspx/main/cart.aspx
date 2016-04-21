<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.cart" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>购物车 - ");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</title>\r\n<meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n<meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/cart.js\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n  \r\n<div class=\"section clearfix\">\r\n  <div class=\"cart-box\">\r\n    <h1>我的购物车</h1>\r\n    <div class=\"cart-step\">\r\n      <ul>\r\n        <li class=\"selected\"><span>1</span>放进购物车</li>\r\n        <li><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  \r\n  <div class=\"line30\"></div>\r\n  <input id=\"jsondata\" name=\"jsondata\" type=\"hidden\" />\r\n  <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart-table\">\r\n    <tr>\r\n      <th width=\"48\" align=\"center\"><a href=\"javascript:;\" onclick=\"selectCart(this);\">全选</a></th>\r\n      <th colspan=\"2\" align=\"left\">商品信息</th>\r\n      <th width=\"84\" align=\"left\">单价</th>\r\n      <th width=\"104\" align=\"center\">数量</th>\r\n      <th width=\"104\" align=\"left\">金额(元)</th>\r\n      <th width=\"84\" align=\"center\">积分</th>\r\n      <th width=\"54\" align=\"center\">操作</th>\r\n    </tr>\r\n    ");
	foreach(DTcms.Model.cart_items modelt in goodsList)
	{

	templateBuilder.Append("\r\n    <tr>\r\n      <td align=\"center\">\r\n        <input type=\"checkbox\" name=\"checkall\" class=\"checkall\" onclick=\"selectCart();\" />\r\n        <input name=\"hideArticleId\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.article_id));
	templateBuilder.Append("\" />\r\n        <input name=\"hideStockQuantity\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.stock_quantity));
	templateBuilder.Append("\" />\r\n        <input name=\"hideGoodsPrice\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\" />\r\n        <input name=\"hidePoint\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\" />\r\n      </td>\r\n      <td width=\"68\">\r\n        <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" />\r\n        </a>\r\n      </td>\r\n      <td>\r\n        <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.article_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a>\r\n      </td>\r\n      <td>\r\n        ￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\r\n      </td>\r\n      <td align=\"center\">\r\n        <div class=\"buy-box\">\r\n          <a href=\"javascript:;\" class=\"reduce\" onclick=\"updateCart(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', -1);\">-</a>\r\n          <input type=\"text\" name=\"goodsQuantity\" class=\"input\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("\" onblur=\"updateCart(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("');\" onkeydown=\"return checkNumber(event);\" />\r\n          <a href=\"javascript:;\" class=\"subjoin\" onclick=\"updateCart(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 1);\">+</a>\r\n        </div>\r\n      </td>\r\n      <td>\r\n        <span class=\"red\">\r\n          ￥<label name=\"amountCount\">");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("</label>\r\n        </span>\r\n      </td>\r\n      <td align=\"center\">\r\n        <label name=\"pointCount\">\r\n          ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n          ");
	}	//end for if

	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("\r\n        </label>\r\n      </td>\r\n      <td align=\"center\">\r\n        <a onclick=\"deleteCart('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', this);\" href=\"javascript:;\">删除</a>\r\n      </td>\r\n    </tr>\r\n    ");
	}	//end for if

	if (goodsList.Count<1)
	{

	templateBuilder.Append("\r\n    <tr>\r\n      <td colspan=\"10\">\r\n        <div class=\"msg-tips\">\r\n          <div class=\"ico warning\"></div>\r\n          <div class=\"msg\">\r\n            <strong>购物车没有商品！</strong>\r\n            <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n          </div>\r\n        </div>\r\n      </td>\r\n    </tr>\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    <tr>\r\n      <th colspan=\"8\" align=\"right\">\r\n        已选择商品 <b id=\"totalQuantity\" class=\"red\">0</b> 件 &nbsp;&nbsp;&nbsp;\r\n        商品总金额（不含运费）：<span class=\"red\">￥</span><b id=\"totalAmount\" class=\"red\">0</b>元\r\n      </th>\r\n    </tr>\r\n  </table>\r\n  \r\n  <div class=\"cart-foot\">\r\n    <div class=\"left btn-box\">\r\n      <a href=\"javascript:;\" onclick=\"selectCart(this);\">全选</a>\r\n      <a href=\"javascript:;\" onclick=\"deleteCart('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("');\">清空购物车</a>\r\n    </div>\r\n    <div class=\"right\">\r\n      <button class=\"btn\" onclick=\"javascript:location.href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("';\">继续购物</button>\r\n      <button class=\"btn btn-success\" onclick=\"formSubmit(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(linkurl("shopping"));

	templateBuilder.Append("');\">立即结算</button>\r\n    </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n    \r\n</div>\r\n\r\n<!--Footer-->\r\n");

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

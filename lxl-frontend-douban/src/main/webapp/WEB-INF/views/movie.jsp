<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <meta name="google-site-verification" content="ok0wCgT20tBBgo9_zat2iAcimtN4Ftf5ccsh092Xeyw"/>
    <title>
        ${movie.title} (Neo4j专题课程)
    </title>

    <meta name="baidu-site-verification" content="cZdR4xxR7RxmM4zE"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">

    <link rel="apple-touch-icon"
          href="https://img3.doubanio.com/f/movie/d59b2715fdea4968a450ee5f6c95c7d7a2030065/pics/movie/apple-touch-icon.png">
    <link href="https://img3.doubanio.com/f/shire/3e5dfc68b0f376484c50cf08a58bbca3700911dc/css/douban.css"
          rel="stylesheet" type="text/css">
    <link href="https://img3.doubanio.com/f/shire/ae3f5a3e3085968370b1fc63afcecb22d3284848/css/separation/_all.css"
          rel="stylesheet" type="text/css">
    <link href="https://img3.doubanio.com/f/movie/8864d3756094f5272d3c93e30ee2e324665855b0/css/movie/base/init.css"
          rel="stylesheet">
    <script type="text/javascript">var _head_start = new Date();</script>
    <script type="text/javascript"
            src="https://img3.doubanio.com/f/movie/0495cb173e298c28593766009c7b0a953246c5b5/js/movie/lib/jquery.js"></script>
    <script type="text/javascript"
            src="/js/douban.js"></script>
    <script type="text/javascript"
            src="https://img3.doubanio.com/f/shire/0efdc63b77f895eaf85281fb0e44d435c6239a3f/js/separation/_all.js"></script>

    <meta name="keywords" content="${movie.title},${movie.title},${movie.title}影评,剧情介绍,电影图片,预告片,影讯,在线购票,论坛">
    <meta name="description" content="${movie.title}电影简介和剧情介绍,${movie.title}影评、图片、预告片、影讯、论坛、在线购票">
    <meta name="mobile-agent" content="format=html5; url=http://m.douban.com/movie/subject/3742360/"/>
    <link rel="alternate" href="android-app://com.douban.movie/doubanmovie/subject/3742360/"/>
    <link rel="stylesheet" href="https://img3.doubanio.com/dae/cdnlib/libs/LikeButton/1.0.5/style.min.css">
    <script type="text/javascript"
            src="https://img3.doubanio.com/f/shire/77323ae72a612bba8b65f845491513ff3329b1bb/js/do.js"
            data-cfg-autoload="false"></script>
    <script type="text/javascript">
        Do.add('dialog', {
            path: 'https://img3.doubanio.com/f/shire/383a6e43f2108dc69e3ff2681bc4dc6c72a5ffb0/js/ui/dialog.js',
            type: 'js'
        });
        Do.add('dialog-css', {
            path: 'https://img3.doubanio.com/f/shire/8377b9498330a2e6f056d863987cc7a37eb4d486/css/ui/dialog.css',
            type: 'css'
        });
        Do.add('handlebarsjs', {
            path: 'https://img3.doubanio.com/f/movie/3d4f8e4a8918718256450eb6e57ec8e1f7a2e14b/js/movie/lib/handlebars.current.js',
            type: 'js'
        });
    </script>

    <script type='text/javascript'>
        var _vwo_code = (function () {
            var account_id = 249272,
                settings_tolerance = 0,
                library_tolerance = 2500,
                use_existing_jquery = false,
                // DO NOT EDIT BELOW THIS LINE
                f = false, d = document;
            return {
                use_existing_jquery: function () {
                    return use_existing_jquery;
                }, library_tolerance: function () {
                    return library_tolerance;
                }, finish: function () {
                    if (!f) {
                        f = true;
                        var a = d.getElementById('_vis_opt_path_hides');
                        if (a) a.parentNode.removeChild(a);
                    }
                }, finished: function () {
                    return f;
                }, load: function (a) {
                    var b = d.createElement('script');
                    b.src = a;
                    b.type = 'text/javascript';
                    b.innerText;
                    b.onerror = function () {
                        _vwo_code.finish();
                    };
                    d.getElementsByTagName('head')[0].appendChild(b);
                }, init: function () {
                    settings_timer = setTimeout('_vwo_code.finish()', settings_tolerance);
                    var a = d.createElement('style'),
                        b = 'body{opacity:0 !important;filter:alpha(opacity=0) !important;background:none !important;}',
                        h = d.getElementsByTagName('head')[0];
                    a.setAttribute('id', '_vis_opt_path_hides');
                    a.setAttribute('type', 'text/css');
                    if (a.styleSheet) a.styleSheet.cssText = b; else a.appendChild(d.createTextNode(b));
                    h.appendChild(a);
                    this.load('//dev.visualwebsiteoptimizer.com/j.php?a=' + account_id + '&u=' + encodeURIComponent(d.URL) + '&r=' + Math.random());
                    return settings_timer;
                }
            };
        }());

        +function () {
            var bindEvent = function (el, type, handler) {
                var $ = window.jQuery || window.Zepto || window.$
                if ($ && $.fn && $.fn.on) {
                    $(el).on(type, handler)
                } else if ($ && $.fn && $.fn.bind) {
                    $(el).bind(type, handler)
                } else if (el.addEventListener) {
                    el.addEventListener(type, handler, false);
                } else if (el.attachEvent) {
                    el.attachEvent("on" + type, handler);
                } else {
                    el["on" + type] = handler;
                }
            }

            var _origin_load = _vwo_code.load
            _vwo_code.load = function () {
                var args = [].slice.call(arguments)
                bindEvent(window, 'load', function () {
                    _origin_load.apply(_vwo_code, args)
                })
            }
        }()

        _vwo_settings_timer = _vwo_code.init();
    </script>


    <script type="application/ld+json">
{
  "@context": "http://schema.org",
  "name": "${movie.title}",
  "url": "/subject/3742360/",
  "image": "/image/p1512562287.webp",
  "director": 
  [
    {
      "@type": "Person",
      "url": "/celebrity/1021999/",
      "name": "姜文 Wen Jiang"
    }
  ]
,
  "author": 
  [
    {
      "@type": "Person",
      "url": "/celebrity/1275244/",
      "name": "朱苏进 Sujin Zhu"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275245/",
      "name": "述平 Shuping"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1021999/",
      "name": "姜文 Wen Jiang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1274911/",
      "name": "郭俊立 Junli Guo"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275961/",
      "name": "危笑 Xiao Wei"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275962/",
      "name": "李不空 Bukong Li"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275963/",
      "name": "马识途 Shitu Ma"
    }
  ]
,
  "actor": 
  [
    {
      "@type": "Person",
      "url": "/celebrity/1021999/",
      "name": "姜文 Wen Jiang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1000905/",
      "name": "葛优 You Ge"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1044899/",
      "name": "周润发 Yun-Fat Chow"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1036905/",
      "name": "刘嘉玲 Carina Lau"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1053618/",
      "name": "陈坤 Kun Chen"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1026454/",
      "name": "张默 Mo Zhang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1274290/",
      "name": "姜武 Wu Jiang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1037851/",
      "name": "周韵 Yun Zhou"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1007401/",
      "name": "廖凡 Fan Liao"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1274497/",
      "name": "姚橹 Lu Yao"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1274884/",
      "name": "邵兵 Bing Shao"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1033846/",
      "name": "苗圃 Pu Miao"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1274255/",
      "name": "冯小刚 Xiaogang Feng"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1032540/",
      "name": "胡军 Jun Hu"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275964/",
      "name": "马珂 Ke Ma"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275547/",
      "name": "白冰 Bing Bai"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275965/",
      "name": "杜奕衡 John Do"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275973/",
      "name": "李静 Jing Li"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275967/",
      "name": "胡明 Ming Hu"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275961/",
      "name": "危笑 Xiao Wei"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1275968/",
      "name": "杨奇雨 Qiyu Yang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1313245/",
      "name": "赵铭 Ming Zhao"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1344685/",
      "name": "姜洪齐 Hongqi Jiang"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1052863/",
      "name": "岳红 Hong Yue"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1320627/",
      "name": "宣晓鸣 Xiaoming Xuan"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1397608/",
      "name": "吴昔果 Xiguo Wu"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1397607/",
      "name": "沙瑀 Yu Sha"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1397606/",
      "name": "陈磊 Lei Chen"
    }
    ,
    {
      "@type": "Person",
      "url": "/celebrity/1326492/",
      "name": "文祥 Xiang Wen"
    }
  ]
,
  "datePublished": "2010-12-16",
  "genre": ["\u5267\u60c5", "\u559c\u5267", "\u52a8\u4f5c", "\u897f\u90e8"],
  "duration": "PT2H12M",
  "description": "民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许...",
  "@type": "Movie",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingCount": "1092775",
    "bestRating": "10",
    "worstRating": "2",
    "ratingValue": "8.8"
  }
}

    </script>


    <style type="text/css">

    </style>
    <style type="text/css">img {
        max-width: 100%;
    }</style>
    <script type="text/javascript"></script>
    <link rel="stylesheet" href="https://img3.doubanio.com/misc/mixed_static/36c0e5f6c8538558.css">

    <link rel="shortcut icon" href="https://img3.doubanio.com/favicon.ico" type="image/x-icon">
</head>

<body>

<script type="text/javascript">var _body_start = new Date();</script>


<link href="//img3.doubanio.com/dae/accounts/resources/f5f3d66/shire/bundle.css" rel="stylesheet" type="text/css">


<div id="db-global-nav" class="global-nav">
    <div class="bd">

        <div class="top-nav-info">
            <a href="https://accounts.douban.com/passport/login?source=movie" class="nav-login" rel="nofollow">登录/注册</a>
        </div>


        <div class="top-nav-doubanapp">
            <a href="https://www.douban.com/doubanapp/app?channel=top-nav" class="lnk-doubanapp">下载豆瓣客户端</a>
            <div id="doubanapp-tip">
                <a href="https://www.douban.com/doubanapp/app?channel=qipao" class="tip-link">豆瓣 <span class="version">6.0</span>
                    全新发布</a>
                <a href="javascript: void 0;" class="tip-close">×</a>
            </div>
            <div id="top-nav-appintro" class="more-items">
                <p class="appintro-title">豆瓣</p>
                <p class="qrcode">扫码直接下载</p>
                <div class="download">
                    <a href="https://www.douban.com/doubanapp/redirect?channel=top-nav&direct_dl=1&download=iOS">iPhone</a>
                    <span>·</span>
                    <a href="https://www.douban.com/doubanapp/redirect?channel=top-nav&direct_dl=1&download=Android"
                       class="download-android">Android</a>
                </div>
            </div>
        </div>


        <div class="global-nav-items">
            <ul>
                <li class="">
                    <a href="https://www.douban.com" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-main&quot;,&quot;uid&quot;:&quot;0&quot;}">豆瓣</a>
                </li>
                <li class="">
                    <a href="https://book.douban.com" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-book&quot;,&quot;uid&quot;:&quot;0&quot;}">读书</a>
                </li>
                <li class="on">
                    <a href="https://movie.douban.com"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-movie&quot;,&quot;uid&quot;:&quot;0&quot;}">电影</a>
                </li>
                <li class="">
                    <a href="https://music.douban.com" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-music&quot;,&quot;uid&quot;:&quot;0&quot;}">音乐</a>
                </li>
                <li class="">
                    <a href="https://www.douban.com/location" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-location&quot;,&quot;uid&quot;:&quot;0&quot;}">同城</a>
                </li>
                <li class="">
                    <a href="https://www.douban.com/group" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-group&quot;,&quot;uid&quot;:&quot;0&quot;}">小组</a>
                </li>
                <li class="">
                    <a href="https://read.douban.com&#47;?dcs=top-nav&amp;dcm=douban" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-read&quot;,&quot;uid&quot;:&quot;0&quot;}">阅读</a>
                </li>
                <li class="">
                    <a href="https://douban.fm&#47;?from_=shire_top_nav" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-fm&quot;,&quot;uid&quot;:&quot;0&quot;}">FM</a>
                </li>
                <li class="">
                    <a href="https://time.douban.com&#47;?dt_time_source=douban-web_top_nav" target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-time&quot;,&quot;uid&quot;:&quot;0&quot;}">时间</a>
                </li>
                <li class="">
                    <a href="https://market.douban.com&#47;?utm_campaign=douban_top_nav&amp;utm_source=douban&amp;utm_medium=pc_web"
                       target="_blank"
                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-market&quot;,&quot;uid&quot;:&quot;0&quot;}">豆品</a>
                </li>
                <li>
                    <a href="#more" class="bn-more"><span>更多</span></a>
                    <div class="more-items">
                        <table cellpadding="0" cellspacing="0">
                            <tbody>
                            <tr>
                                <td>
                                    <a href="https://ypy.douban.com" target="_blank"
                                       data-moreurl-dict="{&quot;from&quot;:&quot;top-nav-click-ypy&quot;,&quot;uid&quot;:&quot;0&quot;}">豆瓣摄影</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>
<script>
    ;window._GLOBAL_NAV = {
        DOUBAN_URL: "https://www.douban.com",
        N_NEW_NOTIS: 0,
        N_NEW_DOUMAIL: 0
    };
</script>


<script src="/js/bundle.js" defer="defer"></script>


<link href="//img3.doubanio.com/dae/accounts/resources/f5f3d66/movie/bundle.css" rel="stylesheet" type="text/css">


<div id="db-nav-movie" class="nav">
    <div class="nav-wrap">
        <div class="nav-primary">
            <div class="nav-logo">
                <a href="https:&#47;&#47;movie.douban.com">豆瓣电影</a>
            </div>
            <div class="nav-search">
                <form action="https:&#47;&#47;search.douban.com&#47;movie/subject_search" method="get">
                    <fieldset>
                        <legend>搜索：</legend>
                        <label for="inp-query">
                        </label>
                        <div class="inp"><input id="inp-query" name="search_text" size="22" maxlength="60"
                                                placeholder="搜索电影、电视剧、综艺、影人" value=""></div>
                        <div class="inp-btn"><input type="submit" value="搜索"></div>
                        <input type="hidden" name="cat" value="1002"/>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
    <div class="nav-secondary">


        <div class="nav-items">
            <ul>
                <li><a href="https://movie.douban.com/cinema/nowplaying/"
                >影讯&购票</a>
                </li>
                <li><a href="https://movie.douban.com/explore"
                >选电影</a>
                </li>
                <li><a href="https://movie.douban.com/tv/"
                >电视剧</a>
                </li>
                <li><a href="https://movie.douban.com/chart"
                >排行榜</a>
                </li>
                <li><a href="https://movie.douban.com/tag/"
                >分类</a>
                </li>
                <li><a href="https://movie.douban.com/review/best/"
                >影评</a>
                </li>
                <li><a href="https://movie.douban.com/annual/2019?source=navigation"
                >2019年度榜单</a>
                </li>
                <li><a href="https://m.douban.com/standbyme/annual2019?source=navigation"
                       target="_blank"
                >2019书影音报告</a>
                </li>
            </ul>
        </div>

        <a href="https://movie.douban.com/annual/2019?source=movie_navigation" class="movieannual"></a>
    </div>
</div>

<script id="suggResult" type="text/x-jquery-tmpl">
  <li data-link="{{= url}}">
            <a href="{{= url}}" onclick="moreurl(this, {from:'movie_search_sugg', query:'{{= keyword }}', subject_id:'{{= id}}', i: '{{= index}}', type: '{{= type}}'})">
            <img src="{{= img}}" width="40" />
            <p>
                <em>{{= title}}</em>
                {{if year}}
                    <span>{{= year}}</span>
                {{/if}}
                {{if sub_title}}
                    <br /><span>{{= sub_title}}</span>
                {{/if}}
                {{if address}}
                    <br /><span>{{= address}}</span>
                {{/if}}
                {{if episode}}
                    {{if episode=="unknow"}}
                        <br /><span>集数未知</span>
                    {{else}}
                        <br /><span>共{{= episode}}集</span>
                    {{/if}}
                {{/if}}
            </p>
        </a>
        </li>
  
</script>


<script src="//img3.doubanio.com/dae/accounts/resources/f5f3d66/movie/bundle.js" defer="defer"></script>


<div id="wrapper">


    <div id="content">

        <!-- top 250 begin -->

        <div class="top250"><span class="top250-no">No.67</span><span class="top250-link"><a
                href="https://movie.douban.com/top250" target="_blank">豆瓣电影Top250</a></span>
        </div>

        <!-- top 250 end -->

        <div id="dale_movie_subject_top_icon"></div>
        <h1>
            <span property="v:itemreviewed">${movie.title}</span>
            <span class="year">(${movie.formatYear})</span>
        </h1>

        <div class="grid-16-8 clearfix">


            <div class="article">


                <div class="indent clearfix">
                    <div class="subjectwrap clearfix">
                        <div class="subject clearfix">


                            <div id="mainpic" class="">
                                <a class="nbgnbg" href="https://movie.douban.com/subject/3742360/photos?type=R"
                                   title="点击看更多海报">
                                    <img src="/image/movie/${movie.pic}"
                                         title="点击看更多海报" alt="${movie.title}" rel="v:image"/>
                                </a>
                            </div>


                            <div id="info">
                                <span><span class='pl'>导演</span>:
                                    <span class='attrs'>
                                         ${movie.formatDirectors}
                                    </span></span><br/>
                                <span><span class='pl'>编剧</span>: <span class='attrs'>${movie.formatWrotes}</span></span><br/>
                                <span class="actor"><span class='pl'>主演</span>: <span class='attrs'>${movie.formatActedIns}</span></span><br/>
                                <span class="pl">类型:</span> ${movie.formatTypes}<br/>

                                <span class="pl">制片国家/地区:</span> ${movie.producerCountry}<br/>
                                <span class="pl">语言:</span> ${movie.language}<br/>
                                <span class="pl">上映日期:</span> <span property="v:initialReleaseDate"
                                                                    content="2010-12-16(中国大陆)">${movie.released}</span><br/>
                                <span class="pl">片长:</span> <span property="v:runtime" content="132">${movie.timeLength}</span><br/>
                                <span class="pl">又名:</span> ${movie.alias}<br/>
                            </div>


                        </div>


                        <div id="interest_sectl">
                            <div class="rating_wrap clearbox" rel="v:rating">
                                <div class="clearfix">
                                    <div class="rating_logo ll">豆瓣评分</div>
                                    <div class="output-btn-wrap rr" style="display:none">
                                        <img src="https://img3.doubanio.com/f/movie/692e86756648f29457847c5cc5e161d6f6b8aaac/pics/movie/reference.png"/>
                                        <a class="download-output-image" href="#">引用</a>
                                    </div>


                                </div>


                                <div class="rating_self clearfix" typeof="v:Rating">
                                    <strong class="ll rating_num" property="v:average">8.8</strong>
                                    <span property="v:best" content="10.0"></span>
                                    <div class="rating_right ">
                                        <div class="ll bigstar bigstar45"></div>
                                        <div class="rating_sum">
                                            <a href="collections" class="rating_people">
                                                <span property="v:votes">1092819</span>人评价
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ratings-on-weight">

                                    <div class="item">
        
        <span class="stars5 starstop" title="力荐">
            5星
        </span>
                                        <div class="power" style="width:64px"></div>
                                        <span class="rating_per">52.6%</span>
                                        <br/>
                                    </div>
                                    <div class="item">
        
        <span class="stars4 starstop" title="推荐">
            4星
        </span>
                                        <div class="power" style="width:43px"></div>
                                        <span class="rating_per">36.1%</span>
                                        <br/>
                                    </div>
                                    <div class="item">
        
        <span class="stars3 starstop" title="还行">
            3星
        </span>
                                        <div class="power" style="width:12px"></div>
                                        <span class="rating_per">10.0%</span>
                                        <br/>
                                    </div>
                                    <div class="item">
        
        <span class="stars2 starstop" title="较差">
            2星
        </span>
                                        <div class="power" style="width:1px"></div>
                                        <span class="rating_per">0.9%</span>
                                        <br/>
                                    </div>
                                    <div class="item">
        
        <span class="stars1 starstop" title="很差">
            1星
        </span>
                                        <div class="power" style="width:0px"></div>
                                        <span class="rating_per">0.4%</span>
                                        <br/>
                                    </div>
                                </div>

                            </div>
                            <div class="rating_betterthan">
                                好于 <a href="/typerank?type_name=喜剧&type=24&interval_id=100:90&action=">98% 喜剧片</a><br/>
                                好于 <a href="/typerank?type_name=剧情&type=11&interval_id=100:90&action=">96% 剧情片</a><br/>
                            </div>
                        </div>


                    </div>


                    <div id="interest_sect_level" class="clearfix">

                        <a href="https://www.douban.com/reason=collectwish&amp;ck=" rel="nofollow"
                           class="j a_show_login colbutt ll" name="pbtn-3742360-wish">
                            <span>想看</span>
                        </a>
                        <a href="https://www.douban.com/reason=collectcollect&amp;ck=" rel="nofollow"
                           class="j a_show_login colbutt ll" name="pbtn-3742360-collect">
                            <span>看过</span>
                        </a>
                        <div class="ll j a_stars">


                            评价:
                            <span id="rating"> <span id="stars"
                                                     data-solid="https://img3.doubanio.com/f/shire/5a2327c04c0c231bced131ddf3f4467eb80c1c86/pics/rating_icons/star_onmouseover.png"
                                                     data-hollow="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
                                                     data-solid-2x="https://img3.doubanio.com/f/shire/7258904022439076d57303c3b06ad195bf1dc41a/pics/rating_icons/star_onmouseover@2x.png"
                                                     data-hollow-2x="https://img3.doubanio.com/f/shire/95cc2fa733221bb8edd28ad56a7145a5ad33383e/pics/rating_icons/star_hollow_hover@2x.png">

            <a href="https://www.douban.com/register?reason=rate" class="j a_show_login" name="pbtn-3742360-1">
        <img src="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
             id="star1" width="16" height="16"/></a>
            <a href="https://www.douban.com/register?reason=rate" class="j a_show_login" name="pbtn-3742360-2">
        <img src="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
             id="star2" width="16" height="16"/></a>
            <a href="https://www.douban.com/register?reason=rate" class="j a_show_login" name="pbtn-3742360-3">
        <img src="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
             id="star3" width="16" height="16"/></a>
            <a href="https://www.douban.com/register?reason=rate" class="j a_show_login" name="pbtn-3742360-4">
        <img src="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
             id="star4" width="16" height="16"/></a>
            <a href="https://www.douban.com/register?reason=rate" class="j a_show_login" name="pbtn-3742360-5">
        <img src="https://img3.doubanio.com/f/shire/2520c01967207a1735171056ec588c8c1257e5f8/pics/rating_icons/star_hollow_hover.png"
             id="star5" width="16" height="16"/></a>
    </span><span id="rateword" class="pl"></span>
    <input id="n_rating" type="hidden" value=""/>
    </span>

                        </div>


                    </div>


                    <div class="gtleft">
                        <ul class="ul_subject_menu bicelink color_gray pt6 clearfix">


                            <li>
                                <img src="https://img3.doubanio.com/f/shire/cc03d0fcf32b7ce3af7b160a0b85e5e66b47cc42/pics/short-comment.gif"/>&nbsp;
                                <a onclick="moreurl(this, {from:'mv_sbj_wr_cmnt_login'})" class="j a_show_login"
                                   href="https://www.douban.com/register?reason=review" rel="nofollow">写短评</a>
                            </li>
                            <li>

                                <img src="https://img3.doubanio.com/f/shire/5bbf02b7b5ec12b23e214a580b6f9e481108488c/pics/add-review.gif"/>&nbsp;
                                <a onclick="moreurl(this, {from:'mv_sbj_wr_rv_login'})" class="j a_show_login"
                                   href="https://www.douban.com/register?reason=review" rel="nofollow">写影评</a>
                            </li>
                            <li>


                            </li>
                            <li> 
   

   
    
    <span class="rec" id="电影-3742360">
    <a href="#"
       data-type="电影"
       data-url="https://movie.douban.com/subject/3742360/"
       data-desc="电影《${movie.title}》 (来自豆瓣) "
       data-title="电影《${movie.title}》 (来自豆瓣) "
       data-pic="/image/p1512562287.jpeg"
       class="bn-sharing ">
        分享到
    </a> &nbsp;&nbsp;
    </span>

                                <script>
                                    if (!window.DoubanShareMenuList) {
                                        window.DoubanShareMenuList = [];
                                    }
                                    var __cache_url = __cache_url || {};

                                    (function (u) {
                                        if (__cache_url[u]) return;
                                        __cache_url[u] = true;
                                        window.DoubanShareIcons = 'https://img3.doubanio.com/f/shire/d15ffd71f3f10a7210448fec5a68eaec66e7f7d0/pics/ic_shares.png';

                                        var initShareButton = function () {
                                            $.ajax({url: u, dataType: 'script', cache: true});
                                        };

                                        if (typeof Do == 'function' && 'ready' in Do) {
                                            Do(
                                                'https://img3.doubanio.com/f/shire/8377b9498330a2e6f056d863987cc7a37eb4d486/css/ui/dialog.css',
                                                'https://img3.doubanio.com/f/shire/383a6e43f2108dc69e3ff2681bc4dc6c72a5ffb0/js/ui/dialog.js',
                                                'https://img3.doubanio.com/f/movie/c4ab132ff4d3d64a83854c875ea79b8b541faf12/js/movie/lib/qrcode.min.js',
                                                initShareButton
                                            );
                                        } else if (typeof Douban == 'object' && 'loader' in Douban) {
                                            Douban.loader.batch(
                                                'https://img3.doubanio.com/f/shire/8377b9498330a2e6f056d863987cc7a37eb4d486/css/ui/dialog.css',
                                                'https://img3.doubanio.com/f/shire/383a6e43f2108dc69e3ff2681bc4dc6c72a5ffb0/js/ui/dialog.js',
                                                'https://img3.doubanio.com/f/movie/c4ab132ff4d3d64a83854c875ea79b8b541faf12/js/movie/lib/qrcode.min.js'
                                            ).done(initShareButton);
                                        }

                                    })('https://img3.doubanio.com/f/movie/32be6727ed3ad8f6c4a417d8a086355c3e7d1d27/js/movie/lib/sharebutton.js');
                                </script>


                            </li>


                        </ul>

                        <script type="text/javascript">
                            $(function () {
                                $(".ul_subject_menu li.rec .bn-sharing").bind("click", function () {
                                    $.get("/blank?sbj_page_click=bn_sharing");
                                });
                                $(".ul_subject_menu .create_from_menu").bind("click", function (e) {
                                    e.preventDefault();
                                    var $el = $(this);
                                    var glRoot = document.getElementById('gallery-topics-selection');
                                    if (window.has_gallery_topics && glRoot) {
                                        // 判断是否有话题
                                        glRoot.style.display = 'block';
                                    } else {
                                        location.href = $el.attr('href');
                                    }
                                });
                            });
                        </script>
                    </div>


                    <style type="text/css">

                        .suggestions-list li {
                            position: relative;
                            left: 0;
                            top: 0;
                            margin-bottom: 7px;
                            height: 35px
                        }

                        .suggestions-list li .user-thumb {
                            display: inline-block;
                            *display: inline;
                            float: left;
                            margin: 2px 5px 0 0;
                            vertical-align: top
                        }

                        .suggestions-list li .user-thumb img {
                            width: 25px;
                            height: 25px
                        }

                        .suggestions-list li .user-name-info {
                            display: inline-block;
                            *display: inline;
                            line-height: 1.4em
                        }

                        .suggestions-list li .user-name-info .user-profile-link {
                            color: #333;
                            font-weight: 800
                        }

                        .suggestions-list li .user-name-info .user-profile-link:hover {
                            color: #4b8dc5
                        }

                        .suggestions-list li .user-name-info p {
                            color: #999
                        }

                        .suggestions-list li .user-name-info b {
                            color: #4b8dc5;
                            font-weight: normal;
                            cursor: pointer
                        }

                        .suggestions-list li .user-name-info b:hover {
                            text-decoration: underline
                        }

                        .suggestions-list li .dismiss {
                            position: absolute
                        }

                        .suggestions-list li .dismiss {
                            color: #aaa;
                            margin: 0 0 0 10px;
                            top: 0;
                            right: 0
                        }

                        .suggestions-list li .dismiss:hover {
                            color: #333;
                            text-decoration: none
                        }

                        .suggest-overlay {
                            position: absolute;
                            z-index: 99;
                            width: auto;
                            background: #fff;
                            border: 1px solid #c5c7d2;
                            -moz-border-radius: 3px;
                            -webkit-border-radius: 3px;
                            border-radius: 3px
                        }

                        .suggest-overlay .bd {
                            min-width: 220px;
                            line-height: 1;
                            background: #fafafa;
                            color: #b3b3b3;
                            padding: 5px;
                            -moz-border-radius: 3px;
                            -webkit-border-radius: 3px;
                            border-radius: 3px
                        }

                        .suggest-overlay ul {
                            color: #999;
                            padding: 3px 0;
                            min-width: 214px
                        }

                        .suggest-overlay li {
                            cursor: pointer;
                            padding: 3px 7px
                        }

                        .suggest-overlay li b {
                            font-weight: bold
                        }

                        .suggest-overlay li .username {
                            color: #333
                        }

                        .suggest-overlay img {
                            margin-right: 5px;
                            width: 20px;
                            height: 20px;
                            vertical-align: middle
                        }

                        .suggest-overlay .on {
                            background: #e9f0f8
                        }

                        .mentioned-highlighter {
                            font: 14px/20px "Helvetica Neue", Helvetica, Arial, sans-serif;
                            position: absolute;
                            left: 4px;
                            top: 4px;
                            font-size: 14px;
                            height: 60px;
                            width: 98.5%;
                            overflow: hidden;
                            background: #fff;
                            white-space: pre-wrap;
                            word-wrap: break-word;
                            color: transparent
                        }

                        .mentioned-highlighter b {
                            font-weight: normal;
                            background-color: #d2e1f3;
                            color: transparent;
                            -moz-border-radius: 2px;
                            -webkit-border-radius: 2px;
                            border-radius: 2px
                        }

                        .movie-share-dialog .bn-flat input {
                            font-size: 14px;
                        }

                        .movie-share-dialog {
                            z-index: 100;
                        }

                        .movie-share-dialog .form-ft-inner {
                            text-align: right;
                        }

                        .movie-share-dialog div.bd {
                            padding: 0;
                        }

                        .movie-share .form-bd .input-area {
                            position: relative;
                            margin: 15px;
                            height: 91px;
                            zoom: 1;
                        }

                        .movie-share-no-media .form-bd {
                            height: 140px;
                        }

                        .movie-share-dialog .share-text {
                            height: 85px;
                            position: absolute;
                            z-index: 9;
                            background: transparent;
                            font: 14px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
                            width: 98%;
                            -webkit-border-radius: 4px 4px 4px 4px;
                            border-radius: 4px 4px 4px 4px;
                        }

                        .movie-share-dialog .mentioned-highlighter {
                            width: 483px;
                            padding: 3px 4px 4px;
                            color: white;
                            position: absolute;
                            top: 0;
                            left: 0;
                            z-index: 0;
                        }

                        .movie-share-dialog .mentioned-highlighter code {
                            color: #D2E1F3;
                            background: #D2E1F3;
                            border-radius: 2px;
                            padding-right: 1px;
                            display: inline-block;
                            font: 14px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
                        }

                        .movie-share .form-ft {
                            background: #e9eef2;
                            height: 25px;
                            padding-top: 10px;
                            padding-bottom: 10px;
                        }

                        .movie-share .form-ft-inner {
                            height: 25px;
                            padding-left: 15px;
                            padding-right: 15px;
                        }

                        .movie-share-dialog .dialog-only-text {
                            text-align: center;
                            font-size: 14px;
                            line-height: 1.5;
                            padding-top: 30px;
                            padding-bottom: 30px;
                            color: #0c7823;
                        }

                        .movie-share-dialog .ll {
                            float: left;
                            display: inline;
                        }

                        .movie-share-dialog .share-label {
                            width: auto;
                            display: inline;
                            float: none;
                        }

                        .movie-share-dialog .leading-label {
                            _vertical-align: -2px;
                        }

                        .movie-share-dialog .media {
                            float: left;
                            margin-right: 10px;
                            max-width: 100px;
                            max-height: 100px;
                            *width: 100px;
                        }

                        .movie-share-dialog .info-area {
                            overflow: hidden;
                            zoom: 1;
                            margin: 0 15px 15px;
                            height: 100px;
                        }

                        .movie-share-dialog .info-area strong {
                            font-weight: bold;
                        }

                        .movie-share-dialog .info-area p {
                            margin: 3px 0;
                            color: #999;
                        }

                        .movie-share-dialog #sync-setting {
                            _vertical-align: -5px;
                            margin-left: 10px;
                        }

                        .movie-share-dialog .info-area .server-error {
                            position: absolute;
                            bottom: 45px;
                            right: 15px;
                            color: red;
                        }

                        .movie-share-dialog .avail-num-indicator {
                            color: #aaa;
                            font-weight: 800;
                            padding-right: 3px;
                        }

                        .movie-share-dialog .bottom-setting {
                            width: 432px;
                        }

                        .movie-share-dialog .input-checkbox {
                            vertical-align: -2px;
                            _vertical-align: -1px;
                        }

                        .movie-share-dialog #sync-setting img {
                            _vertical-align: 2px;
                        }

                        .suggest-overlay {
                            z-index: 2000;
                        }

                        .movie-bar {
                            position: relative;
                            margin-top: 10px;
                        }

                        .movie-bar-fav {
                            position: absolute;
                            top: 0;
                            right: 0;
                        }

                    </style>
                    <script src="https://img3.doubanio.com/f/shire/a40c5220b3f40ce737b366c0030ecf810b37bfea/js/lib/mustache.js"
                            type="text/javascript"></script>
                    <script src="https://img3.doubanio.com/f/shire/1d985568f3cc434b145983919d9954e2ca627e9c/js/lib/textarea-mention.js"
                            type="text/javascript"></script>
                    <script src="https://img3.doubanio.com/f/movie/230795bbf6a9a7700cc6f395067493d5dcc572ad/js/movie/share.js"
                            type="text/javascript"></script>

                    <div class="rec-sec">
<span class="rec">
    <script id="movie-share" type="text/x-html-snippet">
        
    <form class="movie-share" action="/j/share" method="POST">
        <div class="clearfix form-bd">
            <div class="input-area">
                <textarea name="text" class="share-text" cols="72" data-mention-api="https://api.douban.com/shuo/in/complete?alt=xd&amp;callback=?"></textarea>
                <input type="hidden" name="target-id" value="3742360">
                <input type="hidden" name="target-type" value="0">
                <input type="hidden" name="title" value="${movie.title}‎ (2010)">
                <input type="hidden" name="desc" value="导演 姜文 主演 姜文 / 葛优 / 中国大陆 / 中国香港 / 8.8分(1092819评价)">
                <input type="hidden" name="redir" value=""/>
                <div class="mentioned-highlighter"></div>
            </div>

            <div class="info-area">
                    <img class="media" src="/image/p1512562287.webp" />
                <strong>${movie.title}‎ (2010)</strong>
                <p>导演 姜文 主演 姜文 / 葛优 / 中国大陆 / 中国香港 / 8.8分(1092819评价)</p>
                <p class="error server-error">&nbsp;</p>
            </div>
        </div>
        <div class="form-ft">
            <div class="form-ft-inner">
                



                <span class="avail-num-indicator">140</span>
                <span class="bn-flat">
                    <input type="submit" value="推荐" />
                </span>
            </div>
        </div>
    </form>
    
    <div id="suggest-mention-tmpl" style="display:none;">
        <ul>
            {{#users}}
            <li id="{{uid}}">
              <img src="{{avatar}}">{{{username}}}&nbsp;<span>({{{uid}}})</span>
            </li>
            {{/users}}
        </ul>
    </div>


    </script>

        
        <a href="/accounts/register?reason=recommend" class="j a_show_login lnk-sharing"
           share-id="3742360"
           data-mode="plain" data-name="${movie.title}‎ (2010)"
           data-type="movie" data-desc="导演 姜文 主演 姜文 / 葛优 / 中国大陆 / 中国香港 / 8.8分(1092819评价)"
           data-href="https://movie.douban.com/subject/3742360/"
           data-image="/image/p1512562287.webp"
           data-properties="{}"
           data-redir="" data-text=""
           data-apikey="" data-curl=""
           data-count="10" data-object_kind="1002"
           data-object_id="3742360" data-target_type="rec"
           data-target_action="0"
           data-action_props="{&#34;subject_url&#34;:&#34;https:\/\/movie.douban.com\/subject\/3742360\/&#34;,&#34;subject_title&#34;:&#34;${movie.title}‎ (2010)&#34;}">推荐</a>
</span>


                    </div>


                    <script type="text/javascript">
                        $(function () {
                            $('.collect_btn', '#interest_sect_level').each(function () {
                                Douban.init_collect_btn(this);
                            });
                            $('html').delegate(".indent .rec-sec .lnk-sharing", "click", function () {
                                moreurl(this, {
                                    from: 'mv_sbj_db_share'
                                });
                            });
                        });
                    </script>
                </div>


                <div id="collect_form_3742360"></div>


                <div class="related-info" style="margin-bottom:-10px;">
                    <a name="intro"></a>


                    <h2>
                        <i class="">${movie.title}的剧情简介</i>
                        · · · · · ·
                    </h2>

                    <div class="indent" id="link-report">
                    
                        <span property="v:summary" class="">
                                　　${movie.desc}
                        </span>
                    </div>
                </div>
                <div id="dale_movie_subject_banner_after_intro"></div>
                <div id="celebrities" class="celebrities related-celebrities">
                    <h2>
                        <i class="">${movie.title}的演职员</i>
                        · · · · · ·
                    </h2>
                    <ul class="celebrities-list from-subject __oneline">
                        ${movie.formatPersons}
                    </ul>
                </div>
                <link rel="stylesheet"
                      href="https://img3.doubanio.com/f/verify/16c7e943aee3b1dc6d65f600fcc0f6d62db7dfb4/entry_creator/dist/author_subject/style.css">
                <div id="author_subject" class="author-wrapper">
                    <div class="loading"></div>
                </div>
                <script type="text/javascript">
                    var answerObj = {
                        ISALL: 'False',
                        TYPE: 'movie',
                        SUBJECT_ID: '3742360',
                        USER_ID: 'None'
                    }
                </script>
                <script type="text/javascript"
                        src="https://img3.doubanio.com/f/movie/61252f2f9b35f08b37f69d17dfe48310dd295347/js/movie/lib/react/15.4/bundle.js"></script>


                <div id="recommendations" class="">
                    <h2>
                        <i class="">喜欢这部电影的人也喜欢</i>
                        · · · · · ·
                    </h2>
                    <div class="recommendations-bd">
                        ${commentMovie}
                    </div>
                </div>
                <div id="comments-section">
                    <div class="mod-hd">
                        <a class="comment_btn j a_show_login" href="https://www.douban.com/register?reason=review"
                           rel="nofollow">
                            <span>我要写短评</span>
                        </a>
                        <h2>
                            <i class="">${movie.title}的短评</i>
                            · · · · · ·
                            <span class="pl">
            (
                <a href="https://movie.douban.com/subject/3742360/comments?status=P">全部 191039 条</a>
            )
            </span>
                        </h2>
                    </div>
                    <div class="mod-bd">


                        <div class="tab-hd">
                            <a id="hot-comments-tab" href="comments" data-id="hot" class="on">热门</a>&nbsp;/&nbsp;
                            <a id="new-comments-tab" href="comments?sort=time" data-id="new">最新</a>&nbsp;/&nbsp;
                            <a id="following-comments-tab" href="follows_comments" data-id="following"
                               class="j a_show_login">好友</a>
                        </div>

                        <div class="tab-bd">
                            <div id="hot-comments" class="tab">
                                ${movie.formatComments}
                            </a>
                            </div>
                            <div id="new-comments" class="tab">
                                <div id="normal">
                                </div>
                                <div class="fold-hd hide">
                                    <a class="qa" href="/help/opinion#t2-q0" target="_blank">为什么被折叠？</a>
                                    <a class="btn-unfold" href="#">有一些短评被折叠了</a>
                                    <div class="qa-tip">
                                        评论被折叠，是因为发布这条评论的帐号行为异常。评论仍可以被展开阅读，对发布人的账号不造成其他影响。如果认为有问题，可以<a
                                            href="https://help.douban.com/help/ask?category=movie">联系</a>豆瓣电影。
                                    </div>
                                </div>
                                <div class="fold-bd">
                                </div>
                                <span id="total-num"></span>
                            </div>
                            <div id="following-comments" class="tab">


                                <div class="comment-item">
                                    你关注的人还没写过短评
                                </div>

                            </div>
                        </div>


                    </div>
                </div>


                <link rel="stylesheet" href="https://img3.doubanio.com/misc/mixed_static/1e4177a528d7c149.css">

                <br/>

                <script type="text/javascript">
                    $(function () {
                        if ($.browser.msie && $.browser.version == 6.0) {
                            var $info = $('#info'),
                                maxWidth = parseInt($info.css('max-width'));
                            if ($info.width() > maxWidth) {
                                $info.width(maxWidth);
                            }
                        }
                    });
                </script>


            </div>
            <div class="aside">


                <script id="episode-tmpl" type="text/x-jsrender">
<div id="tv-play-source" class="play-source">
    <div class="cross">
        <span style="color:#494949; font-size:16px">{{:cn}}</span>
        <span style="cursor:pointer">✕</span>
    </div>
    <div class="episode-list">
        {{for playlist}}
            <a href="{{:play_link}}&episode={{:ep}}" target="_blank">{{:ep}}集</a>
        {{/for}}
     <div>
 </div>

                </script>

                <div class="gray_ad">

                    <h2>
                        在哪儿看这部电影
                        &nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;
                    </h2>


                    <ul class="bs">
                        <li>
                            <a class="playBtn" data-cn="腾讯视频"
                               href="https://www.douban.com/link2/?url=http%3A%2F%2Fv.qq.com%2Fx%2Fcover%2Frzpyce9pmxayzvb.html%3Fptag%3Ddouban.movie&amp;subtype=1&amp;type=online-video"
                               target="_blank">
                                腾讯视频
                            </a>
                            <span class="buylink-price"><span>
                        VIP免费观看
                    </span></span>
                        </li>
                        <li>
                            <a class="playBtn" data-cn="1905电影网"
                               href="https://www.douban.com/link2/?url=http%3A%2F%2Fwww.1905.com%2Fvod%2Fplay%2F418667.shtml%3F__hz%3D6e0721b2c6977135&amp;subtype=13&amp;type=online-video&amp;link2key=88474ad5fe"
                               target="_blank">
                                1905电影网
                            </a>
                            <span class="buylink-price"><span>
                        免费观看
                    </span></span>
                        </li>
                        <li>
                            <a class="playBtn" data-cn="哔哩哔哩"
                               href="https://www.douban.com/link2/?url=https%3A%2F%2Fwww.bilibili.com%2Fbangumi%2Fplay%2Fss12548%3Fbsource%3Ddouban&amp;subtype=8&amp;type=online-video&amp;link2key=88474ad5fe"
                               target="_blank">
                                哔哩哔哩
                            </a>
                            <span class="buylink-price"><span>
                        免费观看
                    </span></span>
                        </li>

                    </ul>
                </div>


                <!-- douban ad begin -->
                <div id="dale_movie_subject_top_right"></div>
                <div id="dale_movie_subject_top_middle"></div>
                <!-- douban ad end -->


                <style type="text/css">
                    .m4 {
                        margin-bottom: 8px;
                        padding-bottom: 8px;
                    }

                    .movieOnline {
                        background: #FFF6ED;
                        padding: 10px;
                        margin-bottom: 20px;
                    }

                    .movieOnline h2 {
                        margin: 0 0 5px;
                    }

                    .movieOnline .sitename {
                        line-height: 2em;
                        width: 160px;
                    }

                    .movieOnline td, .movieOnline td a:link, .movieOnline td a:visited {
                        color: #666;
                    }

                    .movieOnline td a:hover {
                        color: #fff;
                    }

                    .link-bt:link,
                    .link-bt:visited,
                    .link-bt:hover,
                    .link-bt:active {
                        margin: 5px 0 0;
                        padding: 2px 8px;
                        background: #a8c598;
                        color: #fff;
                        -moz-border-radius: 3px;
                        -webkit-border-radius: 3px;
                        border-radius: 3px;
                        display: inline-block;
                    }
                </style>


                <div class="tags">


                    <h2>
                        <i class="">豆瓣成员常用的标签</i>
                        · · · · · ·
                    </h2>

                    <div class="tags-body">
                        <a href="/tag/黑色幽默" class="">黑色幽默</a>
                        <a href="/tag/中国" class="">中国</a>
                        <a href="/tag/喜剧" class="">喜剧</a>
                        <a href="/tag/人性" class="">人性</a>
                        <a href="/tag/剧情" class="">剧情</a>
                        <a href="/tag/搞笑" class="">搞笑</a>
                        <a href="/tag/内地" class="">内地</a>
                        <a href="/tag/2010" class="">2010</a>
                    </div>
                </div>


                <div id="dale_movie_review_right_guess_you_like"></div>
                <div id="dale_movie_subject_inner_middle"></div>
                <div id="dale_movie_subject_download_middle"></div>


                <div id="subject-doulist">


                    <h2>
                        <i class="">以下豆列推荐</i>
                        · · · · · ·
                        <span class="pl">
            (
                <a href="https://movie.douban.com/subject/3742360/doulists">全部</a>
            )
            </span>
                    </h2>


                    <ul>
                        <li>
                            <a href="https://www.douban.com/doulist/240962/" target="_blank">★豆瓣高分电影榜★ （上）9.7-8.6分</a>
                            <span>(影志)</span>
                        </li>
                        <li>
                            <a href="https://www.douban.com/doulist/192212/" target="_blank">上瘾黑色幽默</a>
                            <span>(闪正)</span>
                        </li>
                        <li>
                            <a href="https://www.douban.com/doulist/44567/" target="_blank">高智商互斗电影</a>
                            <span>(中间元素)</span>
                        </li>
                        <li>
                            <a href="https://www.douban.com/doulist/380312/" target="_blank">中文电影250强总榜（1905——2012）</a>
                            <span>(东方快车)</span>
                        </li>
                        <li>
                            <a href="https://www.douban.com/doulist/968362/" target="_blank">同时入选IMDB250和豆瓣电影250的电影</a>
                            <span>(东方快车)</span>
                        </li>
                    </ul>

                </div>


                <div id="subject-others-interests">


                    <h2>
                        <i class="">谁在看这部电影</i>
                        · · · · · ·
                    </h2>


                    <ul class="">

                        <li class="">
                            <a href="https://www.douban.com/people/126892268/" class="others-interest-avatar">
                                <img src="https://img3.doubanio.com/icon/u126892268-3.jpg" class="pil" alt="薄荷">
                            </a>
                            <div class="others-interest-info">
                                <a href="https://www.douban.com/people/126892268/" class="">薄荷</a>
                                <div class="">
                                    刚刚
                                    看过

                                </div>
                            </div>
                        </li>

                        <li class="">
                            <a href="https://www.douban.com/people/148203790/" class="others-interest-avatar">
                                <img src="https://img3.doubanio.com/icon/u148203790-3.jpg" class="pil" alt="徐小爱～">
                            </a>
                            <div class="others-interest-info">
                                <a href="https://www.douban.com/people/148203790/" class="">徐小爱～</a>
                                <div class="">
                                    刚刚
                                    看过

                                </div>
                            </div>
                        </li>

                        <li class="">
                            <a href="https://www.douban.com/people/213015253/" class="others-interest-avatar">
                                <img src="https://img3.doubanio.com/icon/u213015253-2.jpg" class="pil" alt="Ivan">
                            </a>
                            <div class="others-interest-info">
                                <a href="https://www.douban.com/people/213015253/" class="">Ivan</a>
                                <div class="">
                                    刚刚
                                    看过

                                </div>
                            </div>
                        </li>
                    </ul>


                    <div class="subject-others-interests-ft">

                        <a href="https://movie.douban.com/subject/3742360/collections">1856926人看过</a>
                        &nbsp;/&nbsp;
                        <a href="https://movie.douban.com/subject/3742360/wishes">124275人想看</a>
                    </div>

                </div>


                <h2>
                    <i class="">影片动态</i>
                    · · · · · ·
                    <span class="pl">
            (
                <a href="https://site.douban.com/106755/">更多</a>
            )
            </span>
                </h2>


                <ul class="bs">
                    <li><a target="_blank"
                           href="https://site.douban.com/106755/widget/movie_info/1480342/info/10885094/">《子弹》创中国电影票房新纪录
                        姜文上演王...</a>&nbsp;&nbsp;01-22
                    </li>
                </ul>

                <ul class="bs">
                    <li><a target="_blank"
                           href="https://site.douban.com/106755/widget/movie_info/1480342/info/10884722/">《${movie.title}》终极版花絮曝光
                        15年后重夺票...</a>&nbsp;&nbsp;01-21
                    </li>
                </ul>

                <ul class="bs">
                    <li><a target="_blank"
                           href="https://site.douban.com/106755/widget/movie_info/1480342/info/10879342/">《${movie.title}》香港大热创华语片新纪录
                        首周...</a>&nbsp;&nbsp;01-17
                    </li>
                </ul>

                <ul class="bs">
                    <li><a target="_blank"
                           href="https://site.douban.com/106755/widget/movie_info/1480342/info/10876774/">《${movie.title}》香港首映
                        内地票房破六亿 林青...</a>&nbsp;&nbsp;01-12
                    </li>
                </ul>

                <ul class="bs">
                    <li><a target="_blank"
                           href="https://site.douban.com/106755/widget/movie_info/1480342/info/10874797/">马可·穆勒盛赞《子弹》
                        夸花姐周韵惊艳脱俗</a>&nbsp;&nbsp;01-08
                    </li>
                </ul>
                <br/>


                <!-- douban ad begin -->
                <div id="dale_movie_subject_middle_right"></div>
                <script type="text/javascript">
                    (function (global) {
                        if (!document.getElementsByClassName) {
                            document.getElementsByClassName = function (className) {
                                return this.querySelectorAll("." + className);
                            };
                            Element.prototype.getElementsByClassName = document.getElementsByClassName;

                        }
                        var articles = global.document.getElementsByClassName('article'),
                            asides = global.document.getElementsByClassName('aside');

                        if (articles.length > 0 && asides.length > 0 && articles[0].offsetHeight >= asides[0].offsetHeight) {
                            (global.DoubanAdSlots = global.DoubanAdSlots || []).push('dale_movie_subject_middle_right');
                        }
                    })(this);
                </script>
                <!-- douban ad end -->


                <br/>


                <p class="pl">订阅${movie.title}的评论: <br/><span class="feed">
    <a href="https://movie.douban.com/feed/subject/3742360/reviews"> feed: rss 2.0</a></span></p>


            </div>

        </div>
    </div>


    <div id="footer">
        <div class="footer-extra"></div>

        <span id="icp" class="fleft gray-link">
    &copy; 2005－2020 douban.com, all rights reserved 北京豆网科技有限公司
</span>

        <a href="https://www.douban.com/hnypt/variformcyst.py" style="display: none;"></a>

        <span class="fright">
    <a href="https://www.douban.com/about">关于豆瓣</a>
    · <a href="https://www.douban.com/jobs">在豆瓣工作</a>
    · <a href="https://www.douban.com/about?topic=contactus">联系我们</a>
    · <a href="https://www.douban.com/about/legal">法律声明</a>
    
    · <a href="https://help.douban.com/?app=movie" target="_blank">帮助中心</a>
    · <a href="https://www.douban.com/doubanapp/">移动应用</a>
    · <a href="https://www.douban.com/partner/">豆瓣广告</a>
</span>

    </div>

</div>

</body>

</html>



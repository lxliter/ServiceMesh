<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <title>
        ${person.name} (Neo4j专题课程)
    </title>

    <meta name="baidu-site-verification" content="cZdR4xxR7RxmM4zE"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">

    <meta name="keywords" content="${person.name} ${person.foreignName},简介,个人资料,图片,电影作品,获奖情况,合作影人"/>
    <meta name="description" content="${person.name}简介、图片写真、获奖情况及电影作品一览"/>

    <link href="https://img3.doubanio.com/f/shire/3e5dfc68b0f376484c50cf08a58bbca3700911dc/css/douban.css"
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

    <link rel="alternate" href="android-app://com.douban.movie/doubanmovie/celebrity/1274255/"/>
    <link rel="stylesheet" type="text/css"
          href="https://img3.doubanio.com/f/movie/5c131bbdf002cf3c8ffada7c52640f616de723ce/css/movie/celebrity.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://img3.doubanio.com/f/movie/a6d2e5a112ca7dfc3f4e023e67d1fdb398a0d819/css/movie/show.css"/>
    <script type="text/javascript"
            src="https://img3.doubanio.com/f/shire/77323ae72a612bba8b65f845491513ff3329b1bb/js/do.js"
            data-cfg-autoload="false"></script>

    <style type="text/css">
        .mod {
            margin-bottom: 25px
        }

        .mod .hd {
            margin-bottom: 10px
        }

        fieldset {
            border: 1px solid #DDDDDD;
            margin-bottom: 15px;
            padding: 0 10px;
        }

        .mod h2 {
            color: #333d48;
        }

        #headline img {
            width: 135px;
        }
    </style>
    <style type="text/css">img {
        max-width: 100%;
    }</style>
    <script type="text/javascript"></script>
    <style type="text/css">
        #opt-bar .a-btn {
            color: #000;
            background: #fff3e7;
            border: 1px solid #e7d7ca;
            padding: 0;
            outline: none;
            float: left;
            height: 22px;
            line-height: 22px;
            width: 46px;
            font: 12px Helvetica, Arial, sans-serif;
            cursor: pointer;
        }

        .minisubmit {
            color: #bbb;
            vertical-align: baseline;
        }

        .minisubmit:hover {
            color: #fff;
            background-color: #bbb;
        }
    </style>

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

        <h1>${person.name}&nbsp;&nbsp;${person.foreignName}</h1>

        <div class="grid-16-8 clearfix">


            <div class="article">


                <div id="headline" class="item">
                    <div class="pic">
                        <a class="nbg" title="${person.name} ${person.foreignName}"
                           href="/index?id=${person.personId}">
                            <img alt="${person.name} ${person.foreignName}"
                                 title="点击看大图"
                                 src="/image/movie/${person.logo}">
                        </a>
                        <span class="gact">
            <a class="" rel="nofollow" href="https://movie.douban.com/celebrity/1274255/detail_edit">增改描述、换头像</a>
        </span>
                    </div>
                    <div class="info">

                        <ul class="">

                            <li>
                                <span>性别</span>:
                                ${person.sex}
                            </li>
                            <li>
                                <span>出生日期</span>:
                                ${person.born}
                            </li>

                            <li>
                                <span>出生地</span>:
                                ${person.birthCity}
                            </li>

                            <li>
                                <span>职业</span>:
                                ${person.formatOcupations}
                            </li>
                            <li>
                                <span>更多外文名</span>:
                                ${person.foreignName}
                            </li>
                            <li>
                                <span>家庭成员</span>:
                                ${person.formatFamilyPersons}
                            </li>
                        </ul>

                    </div>
                </div>


                <div id="opt-bar" class="mod">
                    <div class="ll">


                        <form method="POST" action="connect" class="miniform">
                            <input type="submit" class="a-btn j " value="收藏" title=""/>
                        </form>


                        <span class="rec" id="None-1274255">
    <a href="#"
       data-type="None"
       data-url="https://movie.douban.com/celebrity/1274255/"
       data-desc=""
       data-title="影人 ${person.name} ${person.foreignName} (来自豆瓣)"
       data-pic="/image//p45667.jpeg"
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


                    </div>
                    <div class="rr">


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
                <input type="hidden" name="target-id" value="1274255">
                <input type="hidden" name="target-type" value="3">
                <input type="hidden" name="title" value="${person.name} ${person.foreignName}">
                <input type="hidden" name="desc" value="1958-03-18 / 演员 导演 编剧 制片 剪辑 美术指导 艺术指导 视觉特效 / 让子弹飞 / 芳华 / 功夫">
                <input type="hidden" name="redir" value=""/>
                <div class="mentioned-highlighter"></div>
            </div>

            <div class="info-area">
                    <img class="media" src="/image/p45667.webp" />
                <strong>${person.name} ${person.foreignName}</strong>
                <p>1958-03-18 / 演员 导演 编剧 制片 剪辑 美术指导 艺术指导 视觉特效 / 让子弹飞 / 芳华 / 功夫</p>
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
           share-id="1274255"
           data-mode="plain" data-name="${person.name} ${person.foreignName}"
           data-type="" data-desc="1958-03-18 / 演员 导演 编剧 制片 剪辑 美术指导 艺术指导 视觉特效 / 让子弹飞 / 芳华 / 功夫"
           data-href="https://movie.douban.com/celebrity/1274255/"
           data-image="/image/p45667.webp"
           data-properties="{}"
           data-redir="" data-text=""
           data-apikey="" data-curl=""
           data-count="10" data-object_kind="1043"
           data-object_id="1274255" data-target_type="rec"
           data-target_action="0"
           data-action_props="{&#34;actor_url&#34;:&#34;https:\/\/movie.douban.com\/celebrity\/1274255\/&#34;,&#34;actor_name&#34;:&#34;${person.name} ${person.foreignName}&#34;}">推荐</a>
</span>


                        </div>


                    </div>
                </div>


                <div id="intro" class="mod">
                    <div class="hd">
                        <h2>
                            影人简介
                            &nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;
                        </h2>
                    </div>
                    <div class="bd">
                        ${person.desc}
                    </div>
                </div>

                <div id="recent_movies" class="mod">
                    <div class="hd">

                        <h2>
                            最近的5部作品（已上映）
                            &nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;
                            <span class="pl">&nbsp;(

                    <a href="https://movie.douban.com/celebrity/1274255/movies?sortby=time&amp;format=pic"
                       target="_self">全部</a>
                ) </span>
                        </h2>

                    </div>
                    <div class="bd">
                        <ul class="list-s">
                            ${person.formatMovies}
                        </ul>
                    </div>
                </div>


                <div id="partners" class="mod">
                    <div class="hd">
                        <h2>
                            合作2次以上的影人
                            &nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;
                            <span class="pl">&nbsp;(

                    <a href="https://movie.douban.com/celebrity/1274255/partners" target="_self">全部</a>
                ) </span>
                        </h2>
                    </div>
                    <div class="bd">
                        <ul class="list-s">
                            ${personResultHtml}
                        </ul>
                    </div>
                </div>


            </div>
            <div class="aside">


                <div id="fans" class="mod">
                    <div class="hd">
                        <h2>
                            ${person.name}的影迷（12054）
                            &nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;&nbsp;&middot;
                            <span class="pl">&nbsp;(

                    <a href="https://movie.douban.com/celebrity/1274255/fans" target="_self">全部</a>
                ) </span>
                        </h2>
                    </div>

                    <ul class="list-s">
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/115686385/">
                                <img class="" alt="杨凯" src="https://img3.doubanio.com/icon/u115686385-1.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/115686385/">杨凯</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/195331380/">
                                <img class="" alt="。" src="https://img3.doubanio.com/icon/u195331380-1.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/195331380/">。</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/144323156/">
                                <img class="" alt="Z" src="https://img3.doubanio.com/icon/u144323156-3.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/144323156/">Z</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/212995855/">
                                <img class="" alt="当年明月" src="https://img3.doubanio.com/icon/u212995855-1.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/212995855/">当年明月</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/205876184/">
                                <img class="" alt="MEDITATION." src="https://img3.doubanio.com/icon/u205876184-11.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/205876184/">MEDITATION.</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/198475774/">
                                <img class="" alt="惊蛰" src="https://img3.doubanio.com/icon/u198475774-1.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/198475774/">惊蛰</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/147920361/">
                                <img class="" alt="因卿一笑" src="https://img1.doubanio.com/icon/u147920361-7.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/147920361/">因卿一笑</a></span>
                        </li>
                        <li class="">
                            <a class="nbg" href="https://www.douban.com/people/163022076/">
                                <img class="" alt="痛并快乐着" src="https://img3.doubanio.com/icon/u163022076-3.jpg">
                            </a>
                            <span><a class="" href="https://www.douban.com/people/163022076/">痛并快乐着</a></span>
                        </li>
                    </ul>

                </div>

                <div id="dale_movie_celebrity_middle_mini"></div>
                <!-- douban ad begin -->
                <div id="dale_movie_celebrity_bottom_right"></div>
                <!-- douban ad end -->

            </div>
            <div class="extra">

                <div id="dale_movie_celebrity_bottom"></div>

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
<!-- COLLECTED JS -->

</body>

</html>



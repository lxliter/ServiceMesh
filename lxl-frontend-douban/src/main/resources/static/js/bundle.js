!function() {
    "use strict";
    function e(e, n, t, o) {
        var r, i, a = new Date;
        a.setTime(a.getTime() + 24 * (n || 30) * 60 * 60 * 1e3),
            r = "; expires=" + a.toGMTString(),
            t = t || (location.hostname.indexOf("douban") >= 0 ? "douban.com" : location.hostname);
        for (i in e)
            document.cookie = i + "=" + e[i] + r + "; domain=" + t + "; path=" + (o || "/")
    }
    function n(e) {
        var n, t, o = e + "=", r = document.cookie.split(";");
        for (n = 0; n < r.length; n++) {
            for (t = r[n]; " " == t.charAt(0); )
                t = t.substring(1, t.length);
            if (0 === t.indexOf(o))
                return t.substring(o.length, t.length).replace(/\"/g, "")
        }
        return null
    }
    function t(e) {
        e.preventDefault ? e.preventDefault() : e.returnValue = !1
    }
    function o(e, n) {
        var t = 1;
        e.style.opacity = 1,
            e.style.pointerEvents = "none";
        var o = +new Date
            , r = function() {
            t -= (new Date - o) / 400,
                e.style.opacity = t < 0 ? 0 : t,
                o = +new Date,
                t > 0 ? window.requestAnimationFrame && requestAnimationFrame(r) || setTimeout(r, 16) : n()
        };
        r()
    }
    function r(e) {
        window.console && console.error.apply(console, arguments)
    }
    function i(e) {
        var n = function() {}
            , t = e.method || "GET"
            , o = e.url
            , i = e.body
            , a = e.success || n
            , c = e.failed || n
            , u = e.headers || {}
            , s = new XMLHttpRequest;
        s.open(t, o);
        for (var l in u)
            s.setRequestHeader(l, u[l]);
        s.onreadystatechange = function() {
            if (4 === s.readyState && s.status >= 200 && s.status < 300) {
                var e = s.responseText;
                if ("application/json" === u["Content-Type"] || "json" === s.responseType || e[0] + e[e.length - 1] === "{}") {
                    var n = e;
                    try {
                        n = JSON.parse(e)
                    } catch (e) {}
                    a(n)
                } else
                    a(s.responseText)
            }
        }
            ,
            s.onerror = function(e) {
                r(e),
                    c(new Error("Network error"))
            }
            ,
            s.send(i ? JSON.stringify(i) : null)
    }
    function a(e, n, t, o) {
        return !e.addEventListener && (n = "on" + n),
            (e.addEventListener || e.attachEvent).call(e, n, t, o),
            t
    }
    function c(e, n, t, o) {
        return !e.removeEventListener && (n = "on" + n),
            (e.removeEventListener || e.detachEvent).call(e, n, t, o),
            t
    }
    function u() {
        S = "Y"
    }
    function s(e) {
        document.getElementById("top-nav-doumail-link").onclick = function() {
            try {
                moreurl(this, {
                    from: "check_doumail_from_push",
                    uid: e
                })
            } catch (e) {}
        }
    }
    function l(e) {
        if (window.Notification && e.num) {
            var t = n("enable_push_desktop_noty");
            if (t = "1" == t) {
                var o = "";
                if ("notification" == e.type)
                    o = "你收到一个新提醒";
                else {
                    if ("doumail" != e.type)
                        return;
                    o = "你收到一封新豆邮"
                }
                var r = new Notification("豆瓣",{
                    body: o,
                    tag: e.id,
                    icon: "//img3.doubanio.com/dae/accounts/resources/f5f3d66/shire/assets/dou36.png"
                });
                r.onclick = function() {
                    window.focus(),
                        this.close()
                }
                    ,
                    r.onshow = function() {
                        setTimeout(function() {
                            r.close()
                        }, 3e3)
                    }
            }
        }
    }
    function d() {
        var t = document.getElementById("top-nav-notimenu");
        B({
            url: _GLOBAL_NAV.DOUBAN_URL + "/j/notification/nav_pop",
            data: {
                ck: n("ck"),
                k: _GLOBAL_NAV.UPLOAD_AUTH_TOKEN,
                from_push: S
            },
            success: function(n) {
                if (!n.r) {
                    t.innerHTML = n.s;
                    var o = n.n;
                    if (0 === o) {
                        var r = document.querySelector("#db-global-nav .top-nav-reminder .num");
                        r && r.parentNode.removeChild(r)
                    } else {
                        var i = document.querySelector("#db-global-nav .top-nav-reminder .num span");
                        i && (i.innerHTML = o)
                    }
                    e({
                        push_noty_num: n.n
                    })
                }
            }
        })
    }
    function m(e) {
        var n = e.target || e.srcElement
            , t = n.getAttribute("href").split("#")[1]
            , r = _GLOBAL_NAV.DOUBAN_URL + "/j/reply_notify/remove_notify?id=" + t;
        B({
            url: r,
            success: function(e) {
                var t = n.closest(".item-req").parentNode;
                o(t, function() {
                    t.parentNode.removeChild(t)
                })
            }
        })
    }
    function f(e) {
        var t = e.target || e.srcElement
            , r = t.getAttribute("name")
            , i = _GLOBAL_NAV.DOUBAN_URL + "/j/notification/discard";
        B({
            url: i,
            data: {
                id: r,
                ck: n("ck")
            },
            success: function(e) {
                var n = t.closest(".item-req").parentNode;
                o(n, function() {
                    n.parentNode.removeChild(n)
                })
            }
        })
    }
    function p(e) {
        D = e;
        var n = document.querySelector("#db-global-nav .top-nav-reminder");
        if (!e) {
            var t = n.querySelector(".num");
            return void (t && t.parentNode.removeChild(t))
        }
        var o = n.querySelector(".num span");
        o ? o.innerHTML = e : n.insertAdjacentHTML("beforeend", '<span class="num"><span>' + e + "</span><i></i></span>"),
            e > 0 && e < 10 ? n.style.marginRight = "5px" : e >= 10 && (n.style.marginRight = "15px")
    }
    function v(e) {
        U = e;
        var n = document.querySelector("#top-nav-doumail-link")
            , t = n.querySelector("em");
        if (!e)
            return void (t && t.parentNode.removeChild(t));
        var o = "(" + e + ")";
        t ? t.innerHTML = o : n.insertAdjacentHTML("beforeend", "<em>" + o + "</em>")
    }
    function h(e) {
        B({
            url: _GLOBAL_NAV.DOUBAN_URL + "/j/push/get_token_with_ts",
            success: function(n) {
                e(n.token, n.timestamp)
            }
        })
    }
    function _() {
        clearTimeout(V),
            V = setTimeout(function e() {
                var t = parseInt(n("push_noty_num") || "0", 10)
                    , o = parseInt(n("push_doumail_num") || "0", 10);
                t != D && p(t),
                o != U && v(o),
                    t || o ? V = setTimeout(e, 1500) : clearTimeout(V)
            }, 1500)
    }
    function y(n, t, o) {
        if (window.EventSource) {
            var r = "notification:user:" + n
                , i = n + "_" + o + ":" + t
                , a = "http://push.douban.com:4394/sse?channel=" + r + "&auth=" + i;
            "https:" == location.protocol && (a = "https://push.douban.com:4397/sse?channel=" + r + "&auth=" + i);
            var c = null;
            try {
                c = new EventSource(a)
            } catch (e) {
                return
            }
            c.addEventListener("open", function() {
                C = 0
            }, !1),
                c.addEventListener("error", function(e) {
                    this.readyState != EventSource.CLOSED && this.readyState != EventSource.CONNECTING || (c.close(),
                        c = null,
                        setTimeout(function() {
                            (C += 1) < G && h(function(e, t) {
                                y(n, e, t)
                            })
                        }, C * M))
                }, !1),
                c.addEventListener("message", function(t) {
                    var o = JSON.parse(t.data);
                    "notification" == o.type ? (p(o.num),
                        u(),
                        e({
                            push_noty_num: o.num
                        })) : "doumail" == o.type && (v(o.num),
                        s(n),
                        e({
                            push_doumail_num: o.num
                        })),
                        _(),
                        l(o)
                }, !1)
        }
    }
    function N() {
        I && (I.style.display = "none")
    }
    function L(e) {
        var t = !!n(j.key());
        if (I && !t && (I.style.display = "block",
            e)) {
            var o = I.querySelector(".version");
            "textContent"in o ? o.textContent = e : o.innerText = e
        }
    }
    function g(e) {
        var n = e.parentNode;
        if (N(),
        k && (w(),
            n.contains(k)))
            return void (k = null);
        n.classList.add("more-active"),
            k = n.querySelector(".more-items")
    }
    function w() {
        k && k.parentNode.classList.remove("more-active")
    }
    function E(e) {
        this.element = e
    }
    var A = a
        , b = a
        , O = c;
    A.on = b,
        A.off = O;
    var S, k, T = "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {}, B = function(e, n) {
        return n = {
            exports: {}
        },
            e(n, n.exports),
            n.exports
    }(function(e) {
        (function() {
                var n, t, o, r, i, a, c, u;
                o = function(e) {
                    return window.document.createElement(e)
                }
                    ,
                    r = window.encodeURIComponent,
                    c = Math.random,
                    n = function(e) {
                        var n, r, a, c, s, l, d;
                        if (null == e && (e = {}),
                            l = {
                                data: e.data || {},
                                error: e.error || i,
                                success: e.success || i,
                                beforeSend: e.beforeSend || i,
                                complete: e.complete || i,
                                url: e.url || ""
                            },
                            l.computedUrl = t(l),
                        0 === l.url.length)
                            throw new Error("MissingUrl");
                        return c = !1,
                        !1 !== l.beforeSend({}, l) && (a = e.callbackName || "callback",
                            r = e.callbackFunc || "jsonp_" + u(15),
                            n = l.data[a] = r,
                            window[n] = function(e) {
                                return window[n] = null,
                                    l.success(e, l),
                                    l.complete(e, l)
                            }
                            ,
                            d = o("script"),
                            d.src = t(l),
                            d.async = !0,
                            d.onerror = function(e) {
                                return l.error({
                                    url: d.src,
                                    event: e
                                }),
                                    l.complete({
                                        url: d.src,
                                        event: e
                                    }, l)
                            }
                            ,
                            d.onload = d.onreadystatechange = function() {
                                var e, n;
                                if (!(c || "loaded" !== (e = this.readyState) && "complete" !== e))
                                    return c = !0,
                                        d ? (d.onload = d.onreadystatechange = null,
                                        null != (n = d.parentNode) && n.removeChild(d),
                                            d = null) : void 0
                            }
                            ,
                            s = window.document.getElementsByTagName("head")[0] || window.document.documentElement,
                            s.insertBefore(d, s.firstChild)),
                            {
                                abort: function() {
                                    if (window[n] = function() {
                                        return window[n] = null
                                    }
                                        ,
                                        c = !0,
                                        null != d ? d.parentNode : void 0)
                                        return d.onload = d.onreadystatechange = null,
                                            d.parentNode.removeChild(d),
                                            d = null
                                }
                            }
                    }
                    ,
                    i = function() {}
                    ,
                    t = function(e) {
                        var n;
                        return n = e.url,
                            n += e.url.indexOf("?") < 0 ? "?" : "&",
                            n += a(e.data)
                    }
                    ,
                    u = function(e) {
                        var n;
                        for (n = ""; n.length < e; )
                            n += c().toString(36).slice(2, 3);
                        return n
                    }
                    ,
                    a = function(e) {
                        var n, t, o;
                        return n = function() {
                            var n;
                            n = [];
                            for (t in e)
                                o = e[t],
                                    n.push(r(t) + "=" + r(o));
                            return n
                        }(),
                            n.join("&")
                    }
                    ,
                    (null !== e ? e.exports : void 0) ? e.exports = n : this.JSONP = n
            }
        ).call(T)
    }), q = function(e, n, t) {
        for (var o = 0; o < e.length; o++)
            n.call(t, e[o])
    }, D = 0, U = 0, x = {
        a_delete_reply_notify: m,
        a_discard_notify: f
    }, C = 0, G = 20, M = 3e3, V = null, j = {
        version: null,
        key: function() {
            return ("ap_" + j.version).replace(/\W/g, "_") + "_1"
        },
        cookie: "1",
        ifActive: function(t) {

        },
        hide: function() {
            if (j.version) {
                var n = {};
                return n[j.key()] = j.cookie,
                    e(n)
            }
        }
    }, I = document.querySelector("#doubanapp-tip"), R = function(e) {
        return new RegExp("(^| )" + e + "( |$)")
    }, H = function(e, n, t) {
        for (var o = 0; o < e.length; o++)
            n.call(t, e[o])
    };
    E.prototype = {
        add: function() {
            H(arguments, function(e) {
                this.contains(e) || (this.element.className += " " + e)
            }, this)
        },
        remove: function() {
            H(arguments, function(e) {
                this.element.className = this.element.className.replace(R(e), "")
            }, this)
        },
        toggle: function(e) {
            return this.contains(e) ? (this.remove(e),
                !1) : (this.add(e),
                !0)
        },
        contains: function(e) {
            return R(e).test(this.element.className)
        },
        replace: function(e, n) {
            this.remove(e),
                this.add(n)
        }
    },
    "classList"in Element.prototype || Object.defineProperty(Element.prototype, "classList", {
        get: function() {
            return new E(this)
        }
    }),
    window.DOMTokenList && null == DOMTokenList.prototype.replace && (DOMTokenList.prototype.replace = E.prototype.replace),
    window.Element && !Element.prototype.closest && (Element.prototype.closest = function(e) {
            var n, t = (this.document || this.ownerDocument).querySelectorAll(e), o = this;
            do {
                for (n = t.length; --n >= 0 && t.item(n) !== o; )
                    ;
            } while (n < 0 && (o = o.parentElement));return o
        }
    ),
        function() {
            var e = document.getElementById("db-global-nav");
            I && (j.ifActive(function(e, n) {
                e && L(n)
            }),
                b(I, "click", function(e) {
                    if (t(e),
                        N(),
                    e.target.className.indexOf("tip-close") >= 0)
                        j.hide();
                    else {
                        var n = document.createElement("a");
                        n.href = "https://www.douban.com/doubanapp/app?channel=qipao",
                            n.target = "_blank",
                            document.body.appendChild(n),
                            n.click(),
                            document.body.removeChild(n)
                    }
                })),
                b(e, "click", function(e) {
                    var n = e.target || e.srcElement
                        , o = n.closest(".bn-more, .top-nav-reminder .lnk-remind");
                    o && (t(e),
                        g(o),
                    o.classList.contains("lnk-remind") && d())
                }),
                b(document, "click", function(e) {
                    (e.target || e.srcElement).closest(".more-items, .more-active") || k && (w(),
                        k = null)
                });
            var n = e.querySelector(".lnk-doubanapp")
                , o = e.querySelector("#top-nav-appintro");
            if (n) {
                var r;
                b(n, "mouseenter", function(e) {
                    var n = e.target || e.srcElement;
                    n.parentNode.classList.contains("more-active") || g(n)
                }),
                    b(n, "mouseleave", function(e) {
                        e.target || e.srcElement,
                            r = setTimeout(function() {
                                k && (w(),
                                    k = null)
                            }, 200)
                    }),
                    b(o, "mouseenter", function(e) {
                        r && (clearTimeout(r),
                            r = null)
                    }),
                    b(o, "mouseleave", function(e) {
                        var n = e.target || e.srcElement;
                        k && (w(),
                        n === k && (k = null))
                    })
            }
        }(),
    _GLOBAL_NAV.USER_ID && function() {
        var n = document.getElementById("top-nav-notimenu");
        n && (b(n, "click", function(e) {
            var n = e.target || e.srcElement
                , o = n.closest(".j");
            o && (t(e),
                q(o.className.match(/a_(\w+)/gi), function(n) {
                    var t = x[n];
                    "function" == typeof t && t.call(this, e)
                }))
        }),
            b(window, "load", function(n) {
                B({
                    url: _GLOBAL_NAV.DOUBAN_URL + "/j/notification/num",
                    success: function(e) {
                        p(e.num)
                    }
                }),
                    B({
                        url: _GLOBAL_NAV.DOUBAN_URL + "/j/doumail/num",
                        success: function(e) {
                            v(e.num)
                        }
                    }),
                    y(_GLOBAL_NAV.USER_ID, _GLOBAL_NAV.SSE_TOKEN, _GLOBAL_NAV.SSE_TIMESTAMP),
                    e({
                        push_noty_num: _GLOBAL_NAV.N_NEW_NOTIS,
                        push_doumail_num: _GLOBAL_NAV.N_NEW_DOUMAIL
                    }),
                (_GLOBAL_NAV.N_NEW_NOTIS || _GLOBAL_NAV.N_NEW_DOUMAIL) && _()
            }))
    }(),
        function() {
            var e = document.querySelector(".nav-user-account .bn-more");
            e && b(e, "click", function() {
                var n = e.parentNode
                    , t = n.querySelector(".tips-common");
                t && n.removeChild(t)
            })
        }()
}();

(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/discussdianyingxinxi/add-or-update"],{"01ba":function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return a})),t.d(n,"c",(function(){return i})),t.d(n,"a",(function(){return r}));var a=function(){var e=this,n=e.$createElement;e._self._c},i=[]},"0b98":function(e,n,t){},1360:function(e,n,t){"use strict";t.r(n);var r=t("01ba"),a=t("6e15");for(var i in a)"default"!==i&&function(e){t.d(n,e,(function(){return a[e]}))}(i);t("aab0");var u,s=t("f0c5"),c=Object(s["a"])(a["default"],r["b"],r["c"],!1,null,"6bd48aa8",null,!1,r["a"],u);n["default"]=c.exports},"6e15":function(e,n,t){"use strict";t.r(n);var r=t("a284"),a=t.n(r);for(var i in r)"default"!==i&&function(e){t.d(n,e,(function(){return r[e]}))}(i);n["default"]=a.a},a284:function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(t("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function i(e,n,t,r,a,i,u){try{var s=e[i](u),c=s.value}catch(o){return void t(o)}s.done?n(c):Promise.resolve(c).then(r,a)}function u(e){return function(){var n=this,t=arguments;return new Promise((function(r,a){var u=e.apply(n,t);function s(e){i(u,r,a,s,c,"next",e)}function c(e){i(u,r,a,s,c,"throw",e)}s(void 0)}))}}var s=function(){Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(function(){return resolve(t("3240"))}.bind(null,t)).catch(t.oe)},c={data:function(){return{cross:"",ruleForm:{refid:"",userid:"",nickname:"",content:"",reply:""},user:{},ro:{refid:!1,userid:!1,nickname:!1,content:!1,reply:!1}}},components:{wPicker:s},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(n){var t=this;return u(r.default.mark((function a(){var i,u,s,c;return r.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return i=e.getStorageSync("nowTable"),a.next=3,t.$api.session(i);case 3:if(u=a.sent,t.user=u.data,t.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(t.ruleForm.refid=n.refid,t.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){a.next=13;break}return t.ruleForm.id=n.id,a.next=11,t.$api.info("discussdianyingxinxi",t.ruleForm.id);case 11:u=a.sent,t.ruleForm=u.data;case 13:if(t.cross=n.cross,!n.cross){a.next=41;break}s=e.getStorageSync("crossObj"),a.t0=r.default.keys(s);case 17:if((a.t1=a.t0()).done){a.next=41;break}if(c=a.t1.value,"refid"!=c){a.next=23;break}return t.ruleForm.refid=s[c],t.ro.refid=!0,a.abrupt("continue",17);case 23:if("userid"!=c){a.next=27;break}return t.ruleForm.userid=s[c],t.ro.userid=!0,a.abrupt("continue",17);case 27:if("nickname"!=c){a.next=31;break}return t.ruleForm.nickname=s[c],t.ro.nickname=!0,a.abrupt("continue",17);case 31:if("content"!=c){a.next=35;break}return t.ruleForm.content=s[c],t.ro.content=!0,a.abrupt("continue",17);case 35:if("reply"!=c){a.next=39;break}return t.ruleForm.reply=s[c],t.ro.reply=!0,a.abrupt("continue",17);case 39:a.next=17;break;case 41:t.styleChange();case 42:case"end":return a.stop()}}),a)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return u(r.default.mark((function t(){var a,i,u,s,c,o,d,l,f,m,g,b,p,x;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:for(a="",i=[],a&&(i=a.split(",")),u=0;u<i.length;u++)s=new RegExp(i[u],"g"),n.ruleForm.content.indexOf(i[u])>-1&&(n.ruleForm.content=n.ruleForm.content.replace(s,"**"));if(n.ruleForm.refid){t.next=7;break}return n.$utils.msg("关联表id不能为空"),t.abrupt("return");case 7:if(n.ruleForm.userid){t.next=10;break}return n.$utils.msg("用户id不能为空"),t.abrupt("return");case 10:if(n.ruleForm.content){t.next=13;break}return n.$utils.msg("评论内容不能为空"),t.abrupt("return");case 13:if(!n.cross){t.next=29;break}if(l=e.getStorageSync("statusColumnName"),f=e.getStorageSync("statusColumnValue"),""==l){t.next=29;break}if(m=e.getStorageSync("crossObj"),l.startsWith("[")){t.next=25;break}for(g in m)g==l&&(m[g]=f);return b=e.getStorageSync("crossTable"),t.next=23,n.$api.update("".concat(b),m);case 23:t.next=29;break;case 25:c=Number(e.getStorageSync("userid")),o=m["id"],d=e.getStorageSync("statusColumnName"),d=d.replace(/\[/,"").replace(/\]/,"");case 29:if(!o||!c){t.next=52;break}return n.ruleForm.crossuserid=c,n.ruleForm.crossrefid=o,p={page:1,limit:10,crossuserid:c,crossrefid:o},t.next=35,n.$api.list("discussdianyingxinxi",p);case 35:if(x=t.sent,!(x.data.total>=d)){t.next=41;break}return n.$utils.msg(e.getStorageSync("tips")),t.abrupt("return",!1);case 41:if(!n.ruleForm.id){t.next=46;break}return t.next=44,n.$api.update("discussdianyingxinxi",n.ruleForm);case 44:t.next=48;break;case 46:return t.next=48,n.$api.add("discussdianyingxinxi",n.ruleForm);case 48:e.setStorageSync("discussdianyingxinxiCleanType",!0),n.$utils.msgBack("提交成功");case 50:t.next=61;break;case 52:if(!n.ruleForm.id){t.next=57;break}return t.next=55,n.$api.update("discussdianyingxinxi",n.ruleForm);case 55:t.next=59;break;case 57:return t.next=59,n.$api.add("discussdianyingxinxi",n.ruleForm);case 59:e.setStorageSync("discussdianyingxinxiCleanType",!0),n.$utils.msgBack("提交成功");case 61:case"end":return t.stop()}}),t)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,t=n.getFullYear(),r=n.getMonth()+1,a=n.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),r=r>9?r:"0"+r,a=a>9?a:"0"+a,"".concat(t,"-").concat(r,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,t("543d")["default"])},aab0:function(e,n,t){"use strict";var r=t("0b98"),a=t.n(r);a.a},bdae:function(e,n,t){"use strict";(function(e){t("83d0");r(t("66fd"));var n=r(t("1360"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,t("543d")["createPage"])}},[["bdae","common/runtime","common/vendor"]]]);
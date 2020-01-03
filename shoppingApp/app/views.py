from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
# Create your views here.
from django.core import serializers
from app import templates
from django.shortcuts import render, HttpResponse
from app.models import Category, Tag, Tui, Article, Banner, Link
from django.db.models import Q
from django.views.decorators.csrf import csrf_exempt

def findBlogById(request, pk):
	# 根据 id 查询 博客
	articles = Article.objects.values_list()
	print(articles)
	print(pk)
	content = {
	 'articles': articles,
	}

	return render(request, "index.html", content)


def findBlogByAll(request):

	# 查找 全部的博客
	articles = Article.objects.all()
	print(articles)
    #解决的问题是 放回的是json 数据格式 返回 为中文
	articlesList = serializers.serialize('json', articles,  ensure_ascii=False) # 将查询结果进行json序列化
	return HttpResponse(articlesList, content_type="application/json", charset="utf-8")


def findBlogByCategory(request):
    # 根据类别查询 所有文章的标题  和 内容； !!!解决的问题 对时间的处理
    article = Article.objects.filter(category__name="爱情").extra(select={"created_time": "DATE_FORMAT(created_time, '%%Y-%%m-%%d %%H:%%i:%%s')"}).values("title", "body", "created_time")
    print(article)
    # content = {
    #   'article': article,
    # }

    return render(request, "index.html", locals())


def findBlogByTuiName(request):

    article = Article.objects.filter(tui__name="文学").values_list("title", "category", "body")

    return render(request, "index.html", locals())


def findTagByArticleId(request):

    article = Article.objects.filter(Tags__name="标签名").values_list("title", "category", "body")
    return render(request, "index.html", locals())

@csrf_exempt
def findBlogByLikeArticleTitleAndCreatedTimeAndCategory(request):
    # 通过 文章的标题 或者 创建时间 或者 类型 查找 文章；
    # 前台 用 表单 或者 vue的waitch 监控表单的变化 提交 数据
    # 判断 如果 前端 传的数据为空时 全部 查询

    title = request.POST.get("title")
    created_time = request.POST.get("created_time")
    category_name = request.POST.get("category_name")
    # print(category_name)

    #将要 查询的 数据 封装为 元组()  将 要 过滤的封装 为 字典{} 并且 有包含关系
    fields = ("title", "category__name", "body", "created_time", "category")

    category_id = Category.objects.filter(name=category_name).values_list("id", flat=True)[0]
    print("类型的id")
    print(category_id)

    cond = {
        'title__contains': title,
        'category_id': category_id,
        'created_time__gte': created_time,
    }
    # 过滤掉为空的 字段 组合 过滤器
    args = dict([k, v] for k, v in cond.items() if v)
    # print(args)

    #values(""),则返回的是一个 ValueQuerySet 格式的数据是字典  而 values_list() 返回的是 tuple 元组 defer除了fileds 以外的字段
    articles = Article.objects.filter(**args).only(*fields)
    print(articles)


    json_data = serializers.serialize('json', articles,  ensure_ascii=False) # 将查询结果进行json序列化
    return HttpResponse(json_data, content_type="application/json", charset="utf-8")


def findBlogPage(request):
    pass


def findBanner(request):
    Banners = Banner.objects.all()
    Bannerslist = serializers.serialize('json', Banners,  ensure_ascii=False) # 将查询结果进行json序列化
    return HttpResponse(Bannerslist, content_type="application/json", charset="utf-8")
def insertBanner(request):
    #添加轮播图数据
    text_info = request.POST.get("text_info")
    img = request.POST.get("img")
    link_url = request.POST.get("link_url")
    is_active = request.POST.get("is_active")
    Banner["text"] = text
    Banner["img"] = img
    Banner["link_url"] = link_url
    Banner["is_active"] = is_active
    Banner.objects.created()


#对 首页的文章的分页 显示  通过前台发送的page 数量来分页  封装的分页的API
def articleBypage(request):
    articles = Article.objects.values_list()
    pageSize= request.GET.get('PageSize')
    paginator = Paginator(articles, pageSize) # 每页显示25条

    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        # 如果请求的页数不是整数，返回第一页。
        contacts = paginator.page(1)
    except EmptyPage:
        # 如果请求的页数不在合法的页数范围内，返回结果的最后一页。
        contacts = paginator.page(paginator.num_pages)
    #返回 前端 动态数据的page
    return HttpResponse(contacts, content_type="application/json", charset="utf-8")







    # #第一步骤#获取最近三天的数据； 并且是状态为 0的新闻； 外键存在 于 多的一方
    # # pubtime
    # # 获取 当前时间
    # # today = datetime.date.today()
    # # olderday = today + datetime.timedelta(days=-2) #days参数1是明天，-1即是昨天。

    # # awArticle = DwArticle.objects.using('dw').values_list("title","pubtime").filter(status=0,pubtime__gte=olderday)
    # # for x in awArticle:
    # #     print(x[1].strftime('%Y-%m-%d'))

    # #多对多查询 范围为全国的所有标题；
    # # areas_list = Area.objects.using("observer").filter(name="全国").values_list()[0][1]
    # # print(type(areas_list))
    # # articles = Article.objects.using("observer").filter(areas__name="全国").values_list("title")[0]
    # # print(articles)

    # # 查询一个 用户的所有article
    # # userInfo = User.objects.using("observer").filter(id=67).values_list()
    # # print(userInfo)
    # # title = Article.objects.using("observer").filter(user__id=67).values_list("title")
    # # 多张表的组合字段查询
    # fields = ('id', 'new_industry__level', 'title', 'source')
    # a = Article.objects.using("observer").filter(new_industry__id="01").values_list(*fields)
    # # 'list': map(lambda r: {
    # #                 'id': r['id'],
    # #                 'name': r['name'],
    # #                 'app': r['site__app'],
    # #                 'allow_domain': r['site__allow_domain'],
    # #                 'start_url': r['start_url'],
    # #                 'site': { 'id': r['site__id'], 'name': r['site__name'], },
    # #                 'is_task_created': is_task_created(r['id']),
    # #             }, results),
    # # 组合数据为json
    # print(a)


# class Article(models.Model):
#     title = models.CharField(max_length=255, blank=True, verbose_name='标题')
#     url = models.URLField(verbose_name='网站链接')
#     pubtime = models.DateTimeField(auto_now=False, verbose_name='发布时间')
#     source = models.CharField(max_length=80, blank=True, verbose_name='信息来源')
#     score = models.IntegerField(default=0, verbose_name='风险程度')  # 0, 默认值
#     status = models.IntegerField(default=0, verbose_name='状态')  # 0, 默认值 1 有效
#     sentiment = models.IntegerField(
#         null=True, verbose_name='情感属性')  # 0:负面，1:中性，2:正面
#     is_important = models.BooleanField(default=False, verbose_name='是否重点')

#     industry = models.ForeignKey(
#         MajorIndustry,
#         null=True, blank=True,
#         on_delete=models.CASCADE,
#         verbose_name='产品类别'
#     )
#     corpus = models.ForeignKey(
#         CorpusCategories,
#         null=True, blank=True,
#         on_delete=models.CASCADE,
#         verbose_name='语料词'
#     )
#     user = models.ForeignKey(
#         User,
#         default=1,
#         on_delete=models.CASCADE,
#         verbose_name='用户'
#     )
#     new_industry = models.ForeignKey(
#         MajorIndustries,
#         null=True, blank=True,
#         on_delete=models.SET_NULL,
#         verbose_name='新产品类别'
#     )

#     areas = models.ManyToManyField(Area)
#     categories = models.ManyToManyField(Category)

#     class Meta:
#         app_label = 'base'
#         verbose_name_plural = '文章'
#         ordering = ['-pubtime']

#     def __str__(self):
#         return self.title
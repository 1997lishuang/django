from django.shortcuts import render

# Create your views here.
from app import templates
from django.shortcuts import render, HttpResponse
from app.models import Category, Tag, Tui, Article, Banner, Link

def index(request, pk):
	articles = Article.objects.values_list()
	print(articles)
	print(pk)
	content = {
	 'articles': articles,
	}

	return render(request, "index.html", content)
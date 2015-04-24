from django.shortcuts import render

# Create your views here.

def home(request):
    return render(request, 'templates/home.html')


def search(request):
    return render(request, 'templates/search.html')
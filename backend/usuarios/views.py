import json

from django.contrib.auth import authenticate
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt


@csrf_exempt
def login_view(request):

    if request.method != "POST":
        return JsonResponse(
            {"error": "Método no permitido"},
            status=405
        )

    data = json.loads(request.body)

    username = data.get("username")
    password = data.get("password")

    user = authenticate(
        username=username,
        password=password
    )

    if user is not None:
        return JsonResponse({
            "mensaje": "Login correcto",
            "username": user.username
        })

    return JsonResponse({
        "error": "Usuario o contraseña incorrectos"
    }, status=401)
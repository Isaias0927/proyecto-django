from django.shortcuts import render, HttpResponse

# Create your views here.

menu="""
<a href="/">Home</a>
<a href="/contacto">Registrar</a>
<a href="/contacto">Contactanos</a>
"""

def principal (request):
    return render(request, "inicio/principal.html")

def contacto(requet):
    contenido = """<h2>Contacto</h2>
    <p>Nombre:<input type="text" name="nombre"></p>
    <p>Mensaje: <p/><p><textarea cols="50" rows=""></textarea></p>
    <p><input type="Button" name="enviar" value="Enviar"/></p>"""
    return HttpResponse(contenido)
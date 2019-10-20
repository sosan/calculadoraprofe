from flask import Flask
from flask import render_template
from flask import redirect
from flask import request

from flask_bootstrap import Bootstrap

import operator

# inicializaciones e instancias
app = Flask(__name__)
bootstrap = Bootstrap(app)
app.config["SECRET_KEY"] = "GOOLA"

operacion = {
    "+": operator.add,
    "-": operator.sub,
    "*": operator.mul,
    "/": operator.truediv

}

''' 
por ejemplo, haces un redirect y tienes variables que llevarte a destino ¿como te llevas las variables???
con session servidor o pasarlas por get?
'''

# rutas
@app.route('/', methods=["GET", "POST"])
def main():

    if (request.method == "GET"):
        print("get")
        return render_template("index.html")
    elif (request.method == "POST"):
        print("hola")
        expresion = request.form.get("expresion")

        if expresion == "":
            expresion = "0"
        try:
            # result = operacion[expresion](numero1, numero2)
            result = eval(expresion)

        except SyntaxError:
            result = "0"
        except ZeroDivisionError:
            result = "# Division por 0 no permitida #"

        return render_template("index.html", resultadoIndex=result)


if __name__ == '__main__':
    app.run("127.0.0.1", 5001, debug=True)

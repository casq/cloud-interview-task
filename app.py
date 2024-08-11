from flask import Flask, render_template
from jinja2 import Environment, PackageLoader
import os

app = Flask(__name__)

env = Environment(loader=PackageLoader('app', templates'))

@app.route('/')
def home():
  return render_template('index.htm')


if __name__ == "__main__":
  port = int(os.environ.get('PORT', 3000))
  app.config['EXPLAIN_TEMPLATE_LOADING'] = True
  app.run(debug=True, host='0.0.0.0', port=port)


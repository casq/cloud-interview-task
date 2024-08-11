from flask import Flask, render_template
import jinja2
import os

templateLoader = jinja2.FileSystemLoader(searchpath="./templates")
templateEnv = jinja2.Environment(loader=templateLoader)
TEMPLATE_FILE = "index.htm"
template = templateEnv.get_template(TEMPLATE_FILE)

@app.route('/')
def home():
  return render_template(template)


if __name__ == "__main__":
  port = int(os.environ.get('PORT', 3000))
  app.config['EXPLAIN_TEMPLATE_LOADING'] = True
  app.run(debug=True, host='0.0.0.0', port=port)


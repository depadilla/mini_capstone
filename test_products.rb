require "HTTP"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/products")

reponse_info = response.parse

product1_name = reponse_info["products_alls"][0]["name"]
product1_description = reponse_info["products_alls"][0]["description"]

product2_name = reponse_info["products_alls"][1]["name"]
product2_description = reponse_info["products_alls"][1]["description"]

p product1_name
p product1_description

table = TTY::Table.new ['Name','Description'], [[reponse_info["products_alls"][0]["name"], reponse_info["products_alls"][0]["description"]], [reponse_info["products_alls"][1]["name"], reponse_info["products_alls"][1]["description"]]]
puts table.render(:ascii)

table1 = TTY::Table.new ['REDDIT'],[reponse_info["products_alls"][0]["name"]], [[reponse_info["products_alls"][1]["name"]]]
puts table1.render(:ascii, padding: [0,9])
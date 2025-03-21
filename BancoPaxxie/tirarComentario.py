import re

# Caminho do arquivo SQL
input_file = "script.sql"
output_file = "output.sql"

# Regex para identificar comentários
comment_pattern = r"(--.*?$|/\*.*?\*/)"

# Lê o conteúdo do arquivo
with open(input_file, "r", encoding="utf-8") as file:
    sql_content = file.read()

# Remove os comentários
cleaned_sql = re.sub(comment_pattern, "", sql_content, flags=re.DOTALL | re.MULTILINE)

# Salva o arquivo limpo
with open(output_file, "w", encoding="utf-8") as file:
    file.write(cleaned_sql)

print("Comentários removidos com sucesso!")

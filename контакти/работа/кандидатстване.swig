# {{ subject }}

## Позиция
Позиция: **{{ position }}**
Вид заетост: **{{ job }}**
Месторабота:  **{{ office }}**

## Информация за контакт
От: **{{ name }}**
Телефон: **{{ phone }}**
Email: **{{ from }}**
Сайт: **{{ web }}**
Дата: **{{ date }}**

## Автобиография и портфолио
{% for element in files %}
* [{{ element|replace('http://api.acherno.com:8080/files/', '') }}]({{ element }})
{% endfor %}

## Образование и допълнителна квалификация
Средно образование: **{{ school }}**
Висше образование: **{{ university }}**
**{{ student }}**
Допълнителна квалификация: **{{ qualification }}**

## Опит на подобна позиция
{% for element in experience %}
{% if element %}
* {{ element }}
{% endif %}
{% endfor %}
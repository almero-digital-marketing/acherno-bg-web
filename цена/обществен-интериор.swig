# {{ subject }}

## Информация за контакт
От: **{{ name }}**
Телефон: **{{ phone }}**
Email: **{{ from }}**
Дата: **{{ date }}**

## Информация за обекта
{% if purpose %}Предназначение: **{{ purpose }}**{% endif %}
{% if purpose-other %}Друго предназначение: **{{ purpose-other }}**{% endif %}
Квадратура: **{{ area }}m2**
Град: **{{ city }}**

## Особенности на архитектурата на обекта
{% for element in architecture %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Текущо състояние на обекта
{% for element in condition %}{% if element %}
* {{ element }}{% endif %}{% endfor %}{% for element in keep %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Актуални снимки и скици на обекта
{% for element in files %}
* [{{ element|replace('http://api.acherno.com:8080/files/', '') }}]({{ element }}){% endfor %}

## Визия, която ще се търси
{% for element in style %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Промени по инсталциите и разпределения
{% for element in layout %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Ремонт и довършителни работи
{% for element in construction %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Мебели и обзавеждане
{% for element in furniture %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Допълнителни изисквания, коментари или въпроси
{{ comments }}

- - -

# Анализ на поведението
Посещения: **{{ visits }}**
Страници: **{{ pages }}**

## Разгледани страници
{{ history }}

## Геолокация
Държава: **{{ ipcountry }}**
{% if ipcity %}Град: **{{ ipcity }}**{% endif %}
Координати: [{{ iplocation }}](http://www.google.com/maps/place/{{ iplocation }})
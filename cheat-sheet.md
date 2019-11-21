### Создание репозитория (git init)

Переход в директорию, где хотите нужно создать репозиторий:

- `$ cd имя-директории`

Создание репозитория:

- `$ git init`

### Markdown

Узнать больше о Markdown можно [тут](https://www.markdownguide.org).

Пример Markdown-разметки:

```
# My beloved repo
Here I write how much I love markdown.
It's awesome because reasons:
 - It's cool
 - It has lists
 - *It also has italic*
 - **And bold**
 - `And nice monospace font`
```

Результат:

--- 
# My beloved repo
Here I write how much I love markdown.
It's awesome because reasons:
 - It's cool
 - It has lists
 - *It also has italic*
 - **And bold**
 - `And nice monospace font`
---

### Обзор и сохранение изменений (git status, git commit)

Текущий статус файлов в репозитории:

- `$ git status`

Добавление файла в индекс:

- `$ git add <filename>`

Запись совершённых изменений:

- `$ git commit -m "<message>"`

Принято писать глаголы в сообщениях к коммитам в повелительном наклонении (например: "Add new feature").

### Игнорирование файлов

Пример `.gitignore`-файла:

```
# удалим все исполняемые файлы
*.exe
# удалим все файлы и папки с именем bin
bin
# удалим конкретный файл с секретными сведениями
\data\secret_key.txt
```

Гит не будет отображать изменение или создание таких файлов и не будет сохранять изменения в них.

### Отмена коммитов (git log, git revert)

Просмотр истории коммитов:

- `$ git log`

Отмена последнего коммита:

- `$ git revert HEAD`

Если нужно удалить не последний коммит, вместо HEAD необходимо написать его хэш-код (длинная последовательность шестнадцатеричных чисел, подсвеченная в логе жёлтым).

### Подключение локального репозитория к репозиторию на GitHub (git remote)

- `$ git remote origin <адрес репозитория>`.

Локально этому удалённому репозиторию присваивается имя `origin`, по которому к нему можно обращаться.

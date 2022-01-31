#!/usr/bin/python3

"""
    This module requests data from a RESTful API
    (https://jsonplaceholder.typicode.com/)
    and returns information about an employees tasks
    in a CSV format
"""

from csv import writer, QUOTE_ALL
from requests import get
from sys import argv


def todo_csv():
    """ fetches the todo list progress for an employee """
    user_url = 'https://jsonplaceholder.typicode.com/users/{}'\
               .format(argv[1])
    todo_url = 'https://jsonplaceholder.typicode.com/users/{}/todos'\
               .format(argv[1])

    total_count = 0
    completed_count = 0
    completed_list = ''

    user_data = get(user_url).json()
    todo_data = get(todo_url).json()

    with open('USER_ID.csv', 'w', encoding='utf-8') as tasksData:
        taskWriter = writer(tasksData, quoting=QUOTE_ALL)
        for task in todo_data:
            taskWriter.writerow([user_data['id'], user_data['username'],
                                task['completed'], task['title']])


if __name__ == "__main__":
    todo_csv()

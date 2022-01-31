#!/usr/bin/python3

"""
    This module requests data from a RESTful API
    (https://jsonplaceholder.typicode.com/)
    and returns information about an employees tasks
    in JSON format
"""

from json import dump
from requests import get
from sys import argv


def todo_json():
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

    values = []
    for task in todo_data:
        current_task = {}
        current_task['task'] = task['title']
        current_task['completed'] = task['completed']
        current_task['username'] = user_data['username']
        values.append(current_task)

    final_data = {user_data['id']: values}

    with open('USER_ID.json', 'w', encoding='utf-8') as tasksData:
        dump(final_data, tasksData)


if __name__ == "__main__":
    todo_json()

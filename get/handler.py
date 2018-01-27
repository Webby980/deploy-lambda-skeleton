"""This is a test module that represents a simple lambda function."""
import json


def doo(event):
    """Will print the lambda event"""
    print(event)
    print('doo')


def generate_response(status_code, response_body):
    """ This function generates a response containing a HTTP status code and response body.

        Args:
            status_code (int): the status code of the response
            response_body (dict): the response body

        Returns:
            dict: contains the status code and the response body
    """

    return {
        'statusCode': status_code,
        'body': json.dumps(response_body)
    }


def handle(event, context):
    """The entry point for the test lambda function"""
    print(event)
    print(context)
    doo('scooby')
    print('testing')
    return generate_response(200, {})

from handler import handle, doo
import unittest


class TestCreateIak(unittest.TestCase):

    def test__handler__doo_TrueIsTrue(self):

        doo('scooby')
        self.assertTrue(True)

    def test__handler__handle_TrueIsTrue(self):
        handle('scooby', None)
        self.assertTrue(True)

import unittest
import re
import Comments
class Test_test_1(unittest.TestCase):
    def test_T(self):
        list_mail = ["m.m@mail.ru", "m1.@mail.com", "m1@gmail.ru", "regr@mail.com"]
        for i in range (len(list_mail)):
            regex=re.search(r'[a-zA-Z0-9+-]+[@][a-zA-Z0-9-.]+[^.].[a-zA-Z0-9-.]{2,3}$', list_mail[i])
        self.assertTrue(regex)
if __name__ == '__main__':
    unittest.main()

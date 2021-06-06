import unittest
import re
import Comments
class Test_test_1(unittest.TestCase):
    def test_F(self):
        list_mail = ["", "1","m1@","@mail","regr@_ru","@mail.r","mail.ru","@ru.mail", "test@mail"]
        for i in range (len(list_mail)):
            regex=re.search(r'[a-zA-Z0-9+-]+[@][a-zA-Z0-9-.]+[^.].[a-zA-Z0-9-.]{2,3}$', list_mail[i])
        self.assertFalse(regex)
if __name__ == '__main__':
    unittest.main()
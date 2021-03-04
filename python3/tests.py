import unittest

try:
    # from functions import  fn1

except Exception as e:
    print(e)

class Test_Batch_1(unittest.TestCase):
    
    def test_1(self):
        self.assertEqual(True,True)

if __name__ == '__main__':
    unittest.main()

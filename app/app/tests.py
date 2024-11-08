"""
Sample tests
"""

from django.test import SimpleTestCase

from app import calc


class CalcTestCase(SimpleTestCase):
    """Test the calc function."""
    def test_add_numbers(self):
        """Testing adding numbers."""
        res = calc.add(5, 6)

        self.assertEqual(res, 11)

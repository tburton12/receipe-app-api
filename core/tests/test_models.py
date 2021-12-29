from django.test import TestCase
from django.contrib.auth.models import User


class ModelTest(TestCase):

    def test_create_user_with_email_successful(self):
        """Test creating user with email is successful"""
        email = 'test@email.com'
        password = 'testpass'
        user = User.objects.create_user(email=email, username=email,
                                        password=password)
        user.save()
        self.assertEqual(user.email, email)
        self.assertTrue((user.check_password(password)))

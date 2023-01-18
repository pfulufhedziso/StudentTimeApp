using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace StudentTimeApp.MYLibrary
{
    public class hashPassword
    {
        // this methods hashes the user's password
        public static string hashUserPasswors(string password)
        {
            SHA1CryptoServiceProvider sHA1 = new SHA1CryptoServiceProvider();
            byte[] password_bytes = Encoding.ASCII.GetBytes(password);
            byte[] encoded_bytes = sHA1.ComputeHash(password_bytes);
            return Convert.ToBase64String(encoded_bytes);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentTimeApp.MYLibrary
{
    public static class Calculations
    {
        public static int ModuleCredit { get; set; }// FOR STORING MODULE CREDIT
        public static double ModuleTime { get; set; }// FOR STORING MODULE TIME
        public static int NumberOfWeeks { get; set; }// FOR STORING NUMBER OF WEEKS IN A SEMESTER
        public static DateTime StartDate { get; set; }
        public static DateTime EndDate { get; set; }
        public static double HaveStudied { get; set; }// FOR STORING NUMBER OF HOURS THE USER HAS STUDIED 
        public static double StudyTime;// FOR STORING THE NUMBER OF HOURS A USER HAS TO STUDY
        public static double remaniningStudyingHours;// FOR STORING REMAINING HOURS WHICH THE USER STILL NEEDS TO STUDY
        public static int LoggedIn;


        // method to calculate study hours
        public static double SelfStudyHours()
        {
            StudyTime = ((ModuleCredit * 10) / NumberOfWeeks) - ModuleTime;
            return StudyTime;
        }
        // method to calculate  remaining study hours
        public static double RemainingStudyHours()
        {
            remaniningStudyingHours = StudyTime - HaveStudied;
            return remaniningStudyingHours;

        }
        public static void setLoggedIn(int x)
        {
            LoggedIn = x;
        }
        public  static int getLoggedIn()
        {
            return LoggedIn;
        }
       

    }
}
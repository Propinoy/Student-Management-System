using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string Update_Group = "Update Groups SET MemberCount = MemberCount + 1 WHERE GroupID='"
                +GroupNameList.Text.ToString() +"'";


            string Update_Students_GroupID = "Update Students SET GroupID='"+ GroupNameList.Text.ToString() +
                "'  WHERE StudentID='" + User.Identity.Name.ToString() + "'";

            string Update_Students_GroupName = "Update Students SET GroupName='" + GroupNameList.SelectedItem.Text.ToString() 
                + "' WHERE StudentID='" + User.Identity.Name.ToString() + "'";

            Join_Group.UpdateCommand = Update_Group;
            Join_Group.Update();

            StudentInfo.UpdateCommand = Update_Students_GroupID;
            StudentInfo.Update();

            StudentInfo.UpdateCommand = Update_Students_GroupName;
            StudentInfo.Update();
                    
        }









    }
}

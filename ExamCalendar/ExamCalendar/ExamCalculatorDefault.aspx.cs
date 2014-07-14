/* Class:	Web Calendar 
 * Name:	Rick Larsen
 * Date:	9/1/2013 
 * Purpose:	Enable users to select a date to take exam in lab. Validates weekdays and
 *          returns a confirmation message. Allows users to change date and resubmit. 
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamCalendar
{
    public partial class ExamCalculatorDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // event handler for submit button.
        protected void btnSubmit_Click(object sender, System.EventArgs e)
        {
            DateTime examDate;
            examDate = Calendar1.SelectedDate;
                        
            // Validate date chosen is a weekday
            if (examDate.DayOfWeek.ToString() == "Sunday" || examDate.DayOfWeek.ToString() == "Saturday")
            {
                lblMessage1.Visible = false;
                lblMessage2.Visible = false;
                lblDate.Visible = false; 
                lblErrorMessage.Text = "Lab Closed on Weekends. Enter new date.";
                lblErrorMessage.Visible = true;
            }
                            
            else
            {
                // Validate date chosen is after the current date.
                if (examDate <= DateTime.Today)
                {
                    lblMessage1.Visible = false;
                    lblMessage2.Visible = false;
                    lblDate.Visible = false;
                    lblErrorMessage.Text = "Please select a date after today.";
                    lblErrorMessage.Visible = true;
                }
                else
                {
                    // Display confirmation message and instructions.
                    lblErrorMessage.Visible = false;
                    lblMessage1.Visible = true;
                    lblDate.Text = examDate.DayOfWeek + ", " +
                                   examDate.Month + "/" +
                                   examDate.Day + " at 9:00 AM.";
                    lblDate.Visible = true;
                    lblMessage2.Visible = true;
                }
            }
        }

        // Event handler for change date button
        protected void btnChange_Click(object sender, System.EventArgs e)
        {
            // Clears all messages
            lblErrorMessage.Visible = false;
            lblMessage1.Visible = false;
            lblMessage2.Visible = false;
            lblDate.Visible = false;
            Calendar1.SelectedDates.Clear();
        }
    }
}
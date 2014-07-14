/* Class:	Web Calculator 
 * Name:	Rick Larsen
 * Date:	8/30/2013 
 * Purpose:	Enable users to enter numbers and perform simple calculations. Results are displayed in a textbox.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private double value1,
        value2,
        answer;
        
    protected void Page_Load(object sender, EventArgs e)
    {
        txtValue1.Focus();
    }

    // calculations performed when operator is selected
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        value1 = Convert.ToDouble(txtValue1.Text);
        value2 = Convert.ToDouble(txtValue2.Text);
        answer = value1 + value2;
        txtAnswer.Text = answer.ToString();
        btnClear.Focus();
    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        value1 = Convert.ToDouble(txtValue1.Text);
        value2 = Convert.ToDouble(txtValue2.Text);
        answer = value1 - value2;
        txtAnswer.Text = answer.ToString();
        btnClear.Focus();
    }


    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        value1 = Convert.ToDouble(txtValue1.Text);
        value2 = Convert.ToDouble(txtValue2.Text);
        answer = value1 * value2;
        txtAnswer.Text = answer.ToString();
        btnClear.Focus();
    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        value1 = Convert.ToDouble(txtValue1.Text);
        value2 = Convert.ToDouble(txtValue2.Text);
        answer = value1 / value2;
        txtAnswer.Text = answer.ToString();
        btnClear.Focus();
    }

    // Clear button resets all values.
    protected void btnClear_Click(object sender, EventArgs e)
    {
        value1 = 0;
        value2 = 0;
        answer = 0;
        txtValue1.Text = "";
        txtValue2.Text = "";
        txtAnswer.Text = "";
        txtValue1.Focus();
    }
}
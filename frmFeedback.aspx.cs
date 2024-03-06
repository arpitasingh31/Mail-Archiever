using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
public partial class frmFeedback : System.Web.UI.Page
{
    UserFeedbackBL feedback = new UserFeedbackBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FileUpload1.Visible = false;
            lnkRemove.Visible = false;
           
        }
    }
    protected void imgSend1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            feedback.From = txtFrom.Text.Trim();
            feedback.To = txtTo.Text.Trim();
            feedback.Subject = txtSubject.Text.Trim();
            feedback.Feedback = txtMailMessage.Text.Trim();
            feedback.Date = System.DateTime.Now;
            string Attachments;
            if (FileUpload1.HasFile)
            {
                Attachments = Server.MapPath("~/Attachments/");
                if (!Directory.Exists(Attachments))
                    Directory.CreateDirectory(Attachments);
                FileUpload1.PostedFile.SaveAs(Attachments + FileUpload1.FileName);
                feedback.Attachement = FileUpload1.FileName;
                int size = 0;
                size = FileUpload1.PostedFile.ContentLength / 1024;

                feedback.Size = size.ToString() + "KB";
            }
            else
            {
                feedback.Attachement = "";
                feedback.Size = "";
            }


            feedback.InsertFeedback();
            Session["To"] = txtTo.Text.Trim();
            Response.Redirect("~/frmSendFeedbackSuccessfully.aspx");

        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void lnkAttachment_Click(object sender, EventArgs e)
    {

        FileUpload1.Visible = true;
        lnkRemove.Visible = true;
    }
    protected void lnkRemove_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = false;
        lnkRemove.Visible = false;
    }
    protected void ImgCancel1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void ImgSend2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            feedback.From = txtFrom.Text.Trim();
            feedback.To = txtTo.Text.Trim();
            feedback.Subject = txtSubject.Text.Trim();
            feedback.Feedback = txtMailMessage.Text.Trim();
            feedback.Date = System.DateTime.Now;
            string Attachments;
            if (FileUpload1.HasFile)
            {
                Attachments = Server.MapPath("~/Attachments/");
                if (!Directory.Exists(Attachments))
                    Directory.CreateDirectory(Attachments);
                FileUpload1.PostedFile.SaveAs(Attachments + FileUpload1.FileName);
                feedback.Attachement = FileUpload1.FileName;
                int size = 0;
                size = FileUpload1.PostedFile.ContentLength / 1024;

                feedback.Size = size.ToString() + "KB";
            }
            else
            {
                feedback.Attachement = "";
                feedback.Size = "";
            }


            feedback.InsertFeedback();
            Session["To"] = txtTo.Text.Trim();
            Response.Redirect("~/frmSendFeedbackSuccessfully.aspx");
        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void ImgCancel2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");

    }
}

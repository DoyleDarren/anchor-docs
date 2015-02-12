#Install

Before installing, make sure your platform has the [required components](http://drrndyl.github.io/anchor-docs/html/requirements.html) to run Anchor.

1. Download the latest version of Anchor on the [anchor website](http://anchorcms.com/).
2. Navigate to your downloaded file and extract the contents.
3. Depending on your host there may be a few methods of getting files uploaded. The most common is FTP/SFTP. In your favourite client, connect to your webhost and upload the files into the public folder. Note: on different hosts this folder might be called public_html, web, or httpdocs.
4. Most servers should be configured to allow the webserver to read and write to your files and folders, but some are not. In this case you will have to change the permissions on the contents and anchor/config folder to 0777 for the installer to run.
5. Next you will need to create a database for Anchor to install to, this can be called anything you like. On different host this process might vary, normally you will have access to some sort of GUI client such as PHPMyAdmin or Sequel Pro. You’ll need to ask your webhost if you’re not sure about this.
6. Navigate your browser to your Anchor installation URL, if you have placed Anchor in a sub directory make sure you append the folder name to the URL:

~~~
http://mydomainname.com/anchor
~~~

7. Follow the instructions in the installer.
8. Once you have completed the install, make sure to delete install folder for security purposes.

##Having problems?

If you can’t install Anchor, check the [forums](http://forums.anchorcms.com/). There’s probably someone else who’s had the same problem as you, and the community are always happy to help.
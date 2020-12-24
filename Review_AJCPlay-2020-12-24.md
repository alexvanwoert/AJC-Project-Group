## AJC Christmas Bells Project Review


* Site publication: <https://alexvanwoert.github.io/AJC-Project-Group/home.html>
* GitHub: <https://github.com/alexvanwoert/AJC-Project-Group>
* Developers: Alexander VanWoert, Zak Teyssier, Natalya Meyers, Anthony Wlodarczyk
* Date of Evaluation: 2020-12-24
* Evaluated by: @ebeshero

### General
The team did a fine job with producing a coded digital edition of Anna Julia Cooper’s *Christmas Bells* play, working with the photo facsimile PDF of her original typescript. I would like you all to consider your work as something more than a required assignment for a class (though of course that is what is was). But it is now a real project that faces the public, and more than just something to be appreciated by your peers and professors at Penn State Behrend. So my comments here are about improving the site’s accessibility to audiences who may find your site on the public web while learning more about Anna Julia Cooper (AJC). Your site might also become linked from other sites about AJC and African American leaders. In that light, I suggest a few modifications.

### Digital Document Curation
Here is a correction I hope you will address quickly! You all have pretty severely downplayed, even *erased* your own roles as editors of this play, in a way that is kind of problematic, because you are advertising to people that they should be citing *not* your digital edition but rather the Howard University page. I realize you that you were reproducing that information from the PDF, but it is not appropriate on your reading view page because it is not accurate. *You* transcribed the information in XML code, and *you* produced the edition we are reading on this website. You do not need to provide citation information at all, but if you do, you would want to represent your own work, perhaps like this:

**Recommended Citation**
Anna Julia Cooper. *Christmas Bells: A One Act Play for Children*. Edited by Alexander VanWoert, Zak Teyssier, Natalya Meyers, Anthony Wlodarczyk. <https://alexvanwoert.github.io/AJC-Project-Group/Final_Project_XSLT_Output.html>. 2020. 

You should then add some explanation, either on the reading view page or the main page (somewhere on the site) about your team's relationship to the Howard University material you worked with. You should certainly cite them, but you should not be advertising *their* citation information as your own. Does that make sense?

The main page really should tell us more about how you got involved with the AJC materials and make a connection to Dr. Shirley Moody-Turner at Penn State, University Park. It might help to include a little blurb something like what i used in my first TEI assignment working with the AJC materials for our class: 
```
We will be working with some photofacsimiles of manuscripts digitally curated by Dr. Shirley Moody-Turner
from Penn State University for the Digital Howard’s Anna Julia Cooper collection. 
```
Your team was basically *continuing* work with this material that Dr. Moody-Turner and her students were curating as image files. And you all did some serious scholarly work as editors of this material, so that it is text-searchable and more readable than before in a web-ready format. (Don’t sell yourselves short—that is serious work that you have contributed to the Worldwide Web!)

### Music file linked in the edition
I like your idea to link an audio track of holiday music, but I wonder if you might revisit the choice of music here. Ray Conniff is a white performer and not especially historic. Could you locate a historic recording of “Christmas Bells” possibly involving African American artists? Try looking for tracks of vintage Christmas music from the 1920s through 1940s. (On that note, the PSU-Howard team did not make very clear the date of this typescript, but we are pretty sure it is at least early 20th century. The choice of music could better match that sense of historical time.)

### Merge the Analysis and Conclusion Pages
The Analysis page is listing and linking to some code that most site visitors coming to read the play won't really understand. Because you are discussing your work on the project over on the Conclusion page, and covering references to the same code over there, I recommend moving your links from the analysis page and placing them in your Conclusion page at the appropriate moments when you discuss each stage of your work. 

### HTML and CSS code repairs
Most of your project site is impressively clean and free of HTML validation errors. There are a few small but significant issues, however:

1. Add an @alt attribute to the image on your index.html page to include a short description of that image showing Anna Julia Cooper. It's good that you included the source for the image, but can you also indicate what moment it represents in AJC's life? (If you don't remember, you can probably track down that information via areverse image search engine, like https://tineye.com/ .) 

2. The play edition page is missing an important piece of code, the `<title>` element required inside the HTML `<head>` element at the top of the file: That element is supposed to contain metadata about the title of the page together with any CSS linked to the file, and you have the CSS there but not your title. One result of this is the way that page comes up in the browser tab: the tab display can only show the https:// web address and not your title for the page. The title is present on the other pages, so I think it may bbe missing because you needed to add it in your XSLT that generates the reading view. 

3. Your reading view might better balance the left and right margins. Try just adding `margin-right: 5em;` to balance your `margin-left` property in your CSS for the `<body>` element. 

3. Please consider enlarging the font you use for ordinary text throughout the site. It is awfully small, and it is unusual for descriptive metadata at the top of the reading view (the citation information, or the info about the accessory music file you linked) to be in a larger-sized font than the main text you're using for the rest of the play (and rest of the site). The font *size* you're using for that italicized info at the top of the reading view page is probably a good size for the base text. How about swapping font sizes, so that related accessory information is always in the smaller font?

### Closing Comments
These revisions I am suggesting are not particularly complicated, and they are really about “dressing up” your work to make sure it is taken as seriously as it should be. The AJC projects from our class are part of a network of new resources available on a path-breaking African American leader, and you should be clear about your parts in building that network! 
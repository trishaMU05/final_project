*** Settings ***
Documentation     A computer files with the submenu with it
Library     SeleniumLibrary

*** Variables ***
${search}    css:div[class='column customer-service'] a[href='/search']
${input_search}    css:input[name='q']
${search_button}    css:input[type='submit']
${product_list}    xpath://div[@class="product-grid"]//div[@class="item-box"]
${search_assert}    xpath://strong[@class='warning']
${input_search}   xpath:text = xpath://input[@id='Q']
${news}           css:a[href='/news']
${news_assert}    xpath://div[@class='page-title']//child::h1
${blogs}         css:a[href='/blog']
${blog_assert}    //div[@class='page-title']//child::h1

*** Keywords ***
Click the Search field
    Click Link    ${search}
Enter the product
    Input Text    ${input_search}    computer
Click Search Button
    Click Element    ${search_button}
Enter product in search keyword
    Input Text    css:input[class='search-text']   computer

Select the checkbox options Advance Search
    Select Checkbox    id:As
    Checkbox Should Be Selected    id:As
Fill the details of Advance Search
    Select From List By Value    id:Cid    2
    Select Checkbox    id:Isc
    Select From List By Value    id:Mid    0
    Input Text    css:input[class='price-from']    500
    Input Text    css:input[class='price-to']    2000
Click search 
    Click button    css:input[class='button-1 search-button']
List the Computers 
    ${count}    Get Element Count    ${product_list}
    Should Be Equal As Integers     ${count}    4

Clear text for search
   Clear Element Text    ${input_search}

Error for empty search
    Wait Until Element Is Enabled    ${search_assert}
    Should Contain    ${search_assert}      Search term minimum length is 3 characters
                      
click the news field
    Click Link    ${news} 
    Element Text Should Be     ${news_assert}    News

click details in news
   Click Link    //a[normalize-space()='details' and @href='/new-online-store-is-open']

Fill the title
    Input Text    //input[@id='AddNewComment_CommentTitle']    hai

Fill the Comment
    Input Text     //textarea[@id='AddNewComment_CommentText']      I love red color,yercaurd and my home

Click new comment
    Click Element    //input[@class='button-1 news-item-add-comment-button'] 

Click the blog field
    Click Link    ${blogs} 
    Element Text Should Be    ${blog_assert}    Blog

    
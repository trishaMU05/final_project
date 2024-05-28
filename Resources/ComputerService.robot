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
${blog_assert}   xpath://div[@class='page-title']//child::h1
${blog_title}    xpath://a[text()='Customer Service - Client Service']
${blog_link}    xpath://div[@class='page-title']//child::h1
${compare_product}    xpath://a[text()='Compare products list'] 
${compare_assert}    xpath://div[@class='page-title']//child::h1   
${RECENTLY_VIEWED_LINK}       //a[@href='/recentlyviewedproducts']
${recently_viewed_assert}    //div[@class='page-title']//child::h1
${new_products}    xpath://a[text()='New products']
${new_products_assert}    xpath://div[@class='page-title']//child::h1
${button_empty_search}    xpath://input[@value='Search']
${warning_minimum}          xpath://div[@class='search-results']//child::strong
${warning_invalid}        xpath://strong[@class='result']
${log_out_button}         xpath://a[@class='ico-logout']
${logout_aseert}          xpath://a[@class='ico-register']
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

Blog Title 
    Element Text Should Be    ${blog_title}    Customer Service - Client Service

Blog Links
    Click Link    //ul[@class='tags']//a[text()='e-commerce']
    Element Text Should Be     ${blog_link}     Blog posts tagged with 'e-commerce'        

Validate Recently viewed products
     Click Link    ${RECENTLY_VIEWED_LINK}
     Element Text Should Be   ${recently_viewed_assert}    Recently viewed products

Validate for comparing product
    Click Link    ${compare_product}
    Element Text Should Be    ${compare_assert}     Compare products

Validate for new products
    Click Link    ${new_products} 
    Element Text Should Be    ${new_products_assert}    New products

Validate for empty search product
    Click Button  ${button_empty_search} 
    Alert Should Be Present    

Enter the product for minimum
    Input Text    ${input_search}    12 

Assert for minimum search
    Element Text Should Be    ${warning_minimum}   Search term minimum length is 3 characters

Enter the product for invalid 
    Input Text    ${input_search}    chocho         

Assert for invalid search  
     Element Text Should Be    ${warning_invalid}     No products were found that matched your criteria.
                
 

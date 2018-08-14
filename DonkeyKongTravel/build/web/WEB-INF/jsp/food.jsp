<%-- 
    Document   : qingdaoAtt
    Created on : 2018-6-9, 15:22:57
    Author     : liao
--%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>

    <head>                                                                                                                                                                                                                                                                                                                                                                                                                 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Donkey Kong</title>
        <link rel="stylesheet" type="text/css" href="static/css/IndexStyle.css" />
        <link rel="stylesheet" type="text/css" href="static/css/navFold.css" />
        <link rel="stylesheet" type="text/css" href="static/css/attStyle.css" />
        <style type="text/css">
            #foodInfo{
                width: 80%;
                margin: 0px auto;
                margin-top: 70px;
            }
            #foodInfo h1{
                margin: 0px auto;
                text-align: center;
                width: 100%;
                margin-top: 50px;
            }
            #foodInfo img{
                height: 200px;
                border-radius: 20px;
            }
            #foodInfo .titleImg{
                height: 400px;
            }
            #foodInfo div{
                background-color:  rgba(220,220,220,0.7);
                box-shadow: 2px 2px 1px #666666;
                border-radius: 30px;
                padding:30px;
            }
        </style>
    </head>
    ﻿﻿
    <body style="margin:0 auto;background-image: url(static/img/bg3.jpg);background-repeat: repeat;background-attachment: fixed;">

        <jsp:include page="header.jsp"/>

        <jsp:include page="searchBar.jsp"/>


        <!-- body -->
        <div class="mainBody">
            <div id="leftBody">
                <div id="hotelTitle">
                    <h1>Food Page</h1>
                </div>

                <div id="selectCity">
                    <b style="margin-left: 80px">Locate:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#beijing">Beijing</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#shanghai">Shanghai</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#qingdao">Qingdao</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#hangzhou">Hangzhou</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#hongkong">Hongkong</a>
                </div>

                
                <div id="foodInfo">
                    <!--北京菜系-->
                    <h1 id="beijing">Beijing cuisine</h1>
                    <div >
                        <!--北京烤鸭-->
                        <h2>Roasted Duck</h2>
                        <img class="titleImg" src="static\img\Food\BeiJing\Duck.jpg"/>
                        <p>
                            Roast duck is a famous food in Beijing. It is famous for its bright red color, 
                            tender meat, rich flavor and rich and not greasy characteristics. Flavor characteristics: 
                            yellowish, soft, light and fragrant, with other meat and vegetable ingredients.
                        </p>
                        <img src="static\img\Food\BeiJing\Duck1.jpg"/>
                        <img src="static\img\Food\BeiJing\Duck2.jpg"/>
                        <br/><br/><br/><br/>
                        <!--涮羊肉-->
                        <h2>Hot Pot, Mongolian Style </h2>
                        <img class="titleImg" src="static\img\Food\BeiJing\Shuan.jpg"/>
                        <p>
                            The ingredients are delicate, tender, thin and thin, 
                            and flavorings are varied and delicious. The fragrance 
                            is pure and fresh and delicious.
                        </p>
                        <img src="static\img\Food\BeiJing\Shuan1.jpg"/>
                        <img src="static\img\Food\BeiJing\Shuan2.jpg"/>
                        <img src="static\img\Food\BeiJing\Shuan3.jpg"/>
                        
                    </div>
                    <a href="#selectCity">Back to top</a>
                    <br/><br/><br/><br/>
                    
                    <!--青岛菜系-->
                    <h1 id="qingdao">Qingdao cuisine</h1>
                    <div>
                        <!--辣炒蛤蜊-->
                        <h2>Spicy fried clams</h2>
                        <img class="titleImg" src="static\img\Food\Qingdao\GeLi.jpg"/>
                        <p>
                            Spicy clam is a seafood dish. Clams are very tasty. They are called "the best in the world" 
                            and "the crowns in the world". The nutritional characteristics of clams are high protein, high trace elements,
                            high iron, high calcium and low fat. Spicy clams are delicious and spicy, which stimulate the taste buds. This is
                            one of the most common practices of clams. Spicy clams are the favorite of Qingdao people. Fresh clams are tender, 
                            juicy and suitable for wine.
                        </p>
                        <img src="static\img\Food\Qingdao\GeLi1.jpg"/>
                        <img src="static\img\Food\Qingdao\GeLi2.jpg"/>
                        <br/><br/><br/><br/>
                        <!--原壳鲍鱼-->
                        <h2>Boiled fresh albalone</h2>
                        <img class="titleImg" src="static\img\Food\Qingdao\Baoyu.jpg"/>
                        <p>
                            Braised Abalone is a traditional dish in the coastal area of Qingdao, Shandong. This dish is delicious and delicious,
                            and the abalone is tender and delicious, and then poured with Euryale ferox juice. After the abalone meat is cooked, 
                            it is then contained in each of the original shells. Its shape is beautiful and precious. It is a masterpiece of double sculpt and receptacle.
                            The original shell is original and fresh.
                        </p>
                        <img src="static\img\Food\Qingdao\Baoyu1.jpg"/>
                        <img src="static\img\Food\Qingdao\Baoyu2.jpg"/>
                    </div>
                    <a href="#selectCity">Back to top</a>
                    <br/><br/><br/><br/>
                    
                    
                    
                    
                    <!--上海菜系-->
                    <h1 id="shanghai">Shanghai cuisine</h1>
                    <div>
                        <!--上海醉蟹-->
                        <h2>Shanghai drunken crab</h2>
                        <img  class="titleImg"src="static\img\Food\Shanghai\drunkenCrab.jpg"/>
                        <p>
                            Shanghai drunken crab is a local traditional dish in Shanghai. 
                            It is one of the most distinctive dishes in the local cuisine. The crab in Shanghai 
                            is made from crab meat as the main material. The finished crab's wine crab has complete 
                            individual color, yellowing and yellowing. It has the characteristics of delicate meat, 
                            delicious taste, strong aroma and sweet taste.
                        </p>
                        <img src="static\img\Food\Shanghai\drunkenCrab1.jpg"/>
                        <img src="static\img\Food\Shanghai\drunkenCrab2.jpg"/>
                        <br/><br/><br/><br/>
                        <!--南翔小笼包-->
                        <h2>Nanshan Crab Soup Bun</h2>
                        <img class="titleImg" src="static\img\Food\Shanghai\Nanshan.jpg"/>
                        <p>
                            Nanxiang "Nanxiang", "South Xiang big meat steamed bread", "Nanxiang big steamed bread", 
                            "Gu Yi Garden small cage", also known as "Nanxiang small cage bag", "Nanxiang buns steamed bread", 
                            is the traditional famous product of Nanxiang Town in Jiading District, Shanghai. It is famous for 
                            its thin skin, tender meat, juicy, taste and shape. The stuffing heart of Nanxiang's small cage is 
                            made of sandwich leg meat made into meat sauce, only a little ginger and meat jelly, salt, soy sauce, 
                            sugar and water, and the skin is made from unfermented flour. 
                        </p>
                        <img src="static\img\Food\Shanghai\Nanshan1.jpg"/>
                        <img src="static\img\Food\Shanghai\Nanshan2.jpg"/>
                    </div>
                    <a href="#selectCity">Back to top</a>
                    <br/><br/><br/><br/>
                    
                    
                    
                    
                    
                    <h1 id="hangzhou">Hangzhou cuisine</h1>
                    <div>
                        <!--芙蓉水晶虾-->
                        <h2>Hibiscus crystal prawns</h2>
                        <img class="titleImg" src="static\img\Food\Hangzhou\Shuijingxia.jpg"/>
                        <p>
                            Hibiscus crystal shrimp is one of the famous traditional dishes in Zhejiang.
                            It is beautiful in appearance, shrimps and tender, and is white and moist. 
                            It is a good wine with wine. 
                        </p>
                        <img src="static\img\Food\Hangzhou\Shuijingxia1.jpg"/>
                        <img src="static\img\Food\Hangzhou\Shuijingxia2.jpg"/>
                        <br/><br/><br/><br/>
                        <!--东坡肉-->
                        <h2>Dongpo's braised pork </h2>
                        <img class="titleImg" src="static\img\Food\Hangzhou\Dongporou.jpg"/>
                        <p>
                            Dongpo meat, also known as roll meat and Dongpo stewed pork, is a famous traditional 
                            dish in Meishan and Jiangnan area. Dongpo meat in Zhejiang, Sichuan, Hubei and other cuisines, 
                            and the local practice is different, the first cooked after the boil, the first steamed, there 
                            is a direct stew stew juice. The main material and modeling of Dongpo meat are all the same. 
                            The main ingredients are half fat and half fat pork. The finished products are all the Mah Jong 
                            of the yard. The red is bright, and the color is like agate. It takes a taste, soft but not rotten, 
                            fat and not greasy.
                        </p>
                        <img src="static\img\Food\Hangzhou\Dongporou1.jpg"/>
                        <img src="static\img\Food\Hangzhou\Dongporou2.jpg"/>
                        <img src="static\img\Food\Hangzhou\Dongporou3.jpg"/>
                    </div>
                    <a href="#selectCity">Back to top</a><br/><br/><br/><br/>
                    
                    
                    
                    
                    <h1 id="hongkong">HongKong cuisine</h1>
                    <div>
                        <!--阿一鲍鱼-->
                        <h2>AYi Abalone</h2>
                        <img class="titleImg" src="static\img\Food\Hongkong\Ayi.jpg"/>
                        <p>
                            Chinese people always pay attention to food, including the food culture in the history 
                            of civilization. In the Chinese banquet, abalone, shark fin, sea cucumber and bird's nest 
                            are top quality products. The four famous brands have already produced a complete set of cooking 
                            methods in the history of the famous chef. But the Hongkong Fulin group abalone Wine House has created 
                            a unique seafood cooking method based on the traditional cooking, especially the special abalone, which
                            is recognized as an excellent product of Chinese cuisine by the international food industry and enjoys a high reputation.
                        </p>
                        <img src="static\img\Food\Hongkong\Ayi1.jpg"/>
                        <img src="static\img\Food\Hongkong\Ayi2.jpg"/>
                        <br/><br/><br/><br/>
                        <!--明炉烤乳猪-->
                        <h2>Grilled suckling pig </h2>
                        <img class="titleImg" src="static\img\Food\Hongkong\Ruzhu.jpg"/>
                        <p>
                            The roasted suckling pig is also known as a suckling pig. As early as the Western Zhou Dynasty
                            has been classified as "eight treasures", then known as "gun dolphin", that is, roast suckling pig. 
                            In "Qi Min Yao Shu" a book also recorded the making of roast suckling pig, and said that it "color with amber,
                            and kind of real gold, the entrance is to eliminate, strong if Ling snow, slurry cream, and the specific is often". 
                        </p>
                        <img src="static\img\Food\Hongkong\Ruzhu1.jpg"/>
                        <img src="static\img\Food\Hongkong\Ruzhu2.jpg"/>
                        <br/><br/><br/><br/>
                    </div>
                    <a href="#selectCity">Back to top</a>
                </div>
                

            </div>

            <jsp:include page="rightBody.jsp"/>

        </div>


        <jsp:include page="footer.jsp"/>
        <!-- Js import -->
        <script src="/DonkeyKongTravel/static/js/NavFold.js"></script>
    </body>

</html>

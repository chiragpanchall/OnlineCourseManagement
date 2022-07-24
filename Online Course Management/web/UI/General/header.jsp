<%-- 
    Document   : header
    Created on : 6 Apr, 2022, 11:30:52 PM
    Author     : Radhe
--%>
<style>
    .navbar-brand {
            font-family: 'Lobster',cursive;
            font-size: 2.5vw;
        }
        .header-menu {
            font-size: 1.5vw;
        }
       .header-btn {
            position:absolute;
            right:0;
        }
   </style>   

<!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
            <a class="navbar-brand" href="#">Upgradify</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="form-inline my-2 my-lg-0 header-btn">
                    <ul class="navbar-nav mr-auto header-menu">
                        <li class="nav-item">
                            <a class="nav-link">
                            
                            <%
                                out.println(session.getAttribute("uemail").toString());
                            %>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Logout</a>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>


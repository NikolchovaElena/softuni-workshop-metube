<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:import url="templates/head.jsp"/>
</head>
<body>
<div class="container">
    <main>
        <div class="jumbotron">
            <form action="/tubes/create" method="post">
                <div class="row">
                    <div class="col col-md-12 d-flex justify-content-center">
                        <h1>Create Tubes!</h1>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="nameInput">Name</label>
                        </div>
                    </div>
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="nameInput" name="name">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="descriptionArea">Description</label>
                        </div>
                    </div>
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <textarea type="text" id="descriptionArea" name="description" cols="22" rows="4"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="youtubeLinkInput">Youtube Link</label>
                        </div>
                    </div>
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="youtubeLinkInput" name="youtubeLink">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="uploaderInput">Uploader</label>
                        </div>
                    </div>
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="uploaderInput" name="uploader">
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col col-md-12 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Create Tube</button>
                    </div>
                </div>
            </form>
            <hr/>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <a href="/">Back to Home.</a>
                </div>
            </div>
        </div>
    </main>
    <footer><c:import url="templates/footer.jsp"/></footer>
</div>
</body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
    
    <div class="container">
    	<c:forEach items="${recipes}" var="recipe">
    		<div class="recipe-container">
    			<table class="tile">
    				<tr>
    					<td>
    						<img src="img/recipe${recipe.recipeId}.jpg" class="tile-profile"/>
    					</td>
    				</tr>
    				<tr>
    					<td class="tile-name">
    						<c:out value="${recipe.name}"/>
    					</td>
    				</tr>
    				<tr class="tile-shaded">
    					<td>
    						<div class="test-div">
    						<div class="tile-rating">
    							<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
								<img src="img/${formattedRating}-star.png" class="tile-rating"/>
							</div>
							<div class="tile-ingredients">
								<c:out value="${recipe.ingredients.size()}"/> ingredients
							</div>
							</div>
    					</td>
    				</tr>			
    			</table>
    		</div>
		</c:forEach>
    </div>

       <!-- Use the request attribute "recipes" (List<Recipe>) -->

    </section>
</body>
</html>
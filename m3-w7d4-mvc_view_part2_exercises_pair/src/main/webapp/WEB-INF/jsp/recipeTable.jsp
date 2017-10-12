<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
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
    <!-- Use the request attribute "recipes" (List<Recipe>) -->
    
		<h2>Recipes</h2>
		<table id="recipeTable">
			<tr>
				<th>&nbsp;</th>
					<c:forEach items="${recipes}" var= "recipe">
						<td> <img src="img/recipe${recipe.recipeId}.jpg" class="profile"/> </td>
					</c:forEach>
			</tr>	
			
			<tr class="shaded">
				<th>Name</th>
					<c:forEach items="${recipes}" var= "recipe">
						<td> <c:out value="${recipe.name}"/> </td>
					</c:forEach>
			</tr>	
			
			<tr>	
				<th>Type</th>
					<c:forEach items="${recipes}" var= "recipe">
						<td> <c:out value="${recipe.recipeType}"/> </td>
					</c:forEach>
			</tr>			
			
			<tr class="shaded">	
				<th>Cook Time</th>
					<c:forEach items="${recipes}" var= "recipe">
						<td> <c:out value="${recipe.cookTimeInMinutes}"/> min</td>
					</c:forEach>
			</tr>		
				
			<tr>	
				<th> Ingredients </th>
					<c:forEach items="${recipes}" var= "recipe">
						<td> <c:out value="${recipe.ingredients.size()}"/> ingredients</td>
					</c:forEach>
			</tr>	
			
			<tr class="shaded">	
				<th>Rating</th>
					<c:forEach items="${recipes}" var= "recipe">
						<td>
							<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
						
							<img src="img/${formattedRating}-star.png" class="rating"/>
							
						</td>
					</c:forEach>
			</tr>	
		</table>
		 
    </section>
</body>
</html>
<!--<th> <img src="/mvc-views-part2-exercises-pair/src/main/webapp/img/recipe0.jpg" alt="Chili Garlic Roasted Broccoli"/></th>-->
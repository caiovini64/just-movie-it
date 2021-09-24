

<h1 align="center">
    🎥<a> Just Movie It </a>
</h1>



<h3 align="center">
    Just Movie it is an App of movie recommendations.
</h3>


## 📃 About

Just Movie It is an app of movie recommendations, where the user can see movie lists and see selected movie details using BloC Pattern to State Management and TDD.

**This project is in the planning stage and all that can be changed.**

## ⚙️ Functional Requirements

- [x] The system should allow sign in
- [ ] The system should allow sign up
- [ ] The system should allow viewing of a list of popular movies
- [ ] The system should allow viewing of a list of top-rated movies 
- [ ] The system should allow viewing of details of a selected movie
- [ ] The system should allow viewing of a list of similar movies from a selected movie
- [ ] The system should allow adding of a movie to a list of favorite movies
- [ ] The system should allow deleting of a movie from the list of favorite movies


## 📐 Architecture
   The application's architecture is based on google's Jetpack Architecture proposal for Android development with Kotlin and Clean Architecture. 
 ![DataFlow](https://user-images.githubusercontent.com/45527157/131545153-229f54ff-b546-4e08-a027-11771cfeff44.png)
   
   For the **presentation layer**, the MVP Pattern was chosen, and the presenter is responsible for the state management of the view. The ViewModel class isn't the same as the MVVM, the ViewModel here is the data model that will be shown by the view. 
   
For the **data layer**, the Repository Pattern was chosen to decouple the app from the data source and isolate the data layer. 

Using Repository Pattern, we have a simple class responsible to get the data from the data source and make that data readable for our application. The repository is a reliable point of access for our ViewModel.


   
## 🎨 Layout

The application layout can be accessed in the [Figma](https://www.figma.com/file/yAUq38COHlCfjdNj85B9pf/Just-Movie-it?node-id=0%3A1).





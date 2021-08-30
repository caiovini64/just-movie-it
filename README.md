

<h1 align="center">
    🎥<a> Just Movie It </a>
</h1>



<h3 align="center">
    Just Movie it is an App of movie recommendations.
</h3>

## ⚙️ Functional Requirements

- [ ] The system should allow sign in
- [ ] The system should allow sign up
- [ ] The system should allow viewing of a list of popular movies
- [ ] The system should allow viewing of a list of top-rated movies 
- [ ] The system should allow viewing of details of a selected movie
- [ ] The system should allow viewing of a list of similar movies from a selected movie
- [ ] The system should allow adding of a movie to a list of favorite movies
- [ ] The system should allow deleting of a movie from the list of favorite movies


## 📐 Architecture
   The project structure is divided into three main layers:
   - Domain: The heart of the application, all the business rules and entities.
   - Data: Here is the external connection through use-case implementations.
   - UI: The application interface.

  The application's data flow is simple and seeks **SOLID** principles.
  ![data-flow](https://user-images.githubusercontent.com/45527157/131367753-36e7a396-b6c0-488b-91e0-80fd439119a5.png)
  
  **Page:** The responsibility of the page is to get the user actions to send to the presenter and show the presenter's feedback.
  
  **Presenter:** The presenter's responsibility is to receive the user actions from the page, obtain the use case data, and send the data to the page.
  
  **Usecase:** The use case is the business logic of the application.
  
  **Client:** The client's responsibility is to make the external connection with the API and return the data.

   
## 🎨 Layout

The application layout could be accessed in the [Figma](https://www.figma.com/file/yAUq38COHlCfjdNj85B9pf/Just-Movie-it?node-id=0%3A1).

## 🛠 Technologies

- **[Firebase](https://firebase.google.com/products/auth?gclsrc=aw.ds&gclid=CjwKCAjw9aiIBhA1EiwAJ_GTSoOXq5Yt_uQblGU9Z2aQuUxWfH8sD9eL1DcpVUXG11RJ7QxhshJ6sRoCKogQAvD_BwE)** - To authentication and realtime database.
- **[Sourcetree](https://www.sourcetreeapp.com/)** - To better management of the branches



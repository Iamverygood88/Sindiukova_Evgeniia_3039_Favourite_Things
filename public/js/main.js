
const myVM = (() => {
  // get the user buttons and fire off an async DB query with Fetch

  let userButtons = document.querySelectorAll('.link');
  let  lightbox = document.querySelector('.lightbox');


  function parseUserData(person) {
    let targetDiv = document.querySelector('.lb-content');
    // let targetImg = lightbox.querySelector('img');

        let bioContent = `
        <p>${person.title}</p>
        <p>${person.description}</p>
        <img src="../images/${person.image}">
        <p>${person.additional_info}</p>
        <p>${person.video_link}</p>
        `
        ;
        
        //person is the database result 

        console.log(bioContent);

        targetDiv.innerHTML = bioContent;
        // targetImg.src = person.imgsrc;
        lightbox.classList.add('show-lb');


  }
  

  function getUserData(event) {
    event.preventDefault();

    let imgSrc = this.previousElementSibling.getAttribute('src');

    let url = `/things/${this.getAttribute('href')}`;

  
    fetch(url) // go get the data
        .then(res => res.json()) // parse the json resulr into a plain object
        .then(data => {
            console.log("my database result is: ", data)

            data[0].imgsrc = imgSrc;
            parseUserData(data[0]);
      
        })
        .catch((err) => {
            console.log(err)
        });





  }

  userButtons.forEach(button => button.addEventListener('click', getUserData));

  lightbox.querySelector('.close').addEventListener('click', function() {
    lightbox.classList.remove('show-lb');
});
})();
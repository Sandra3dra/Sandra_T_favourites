const myVM = (() => {
    let userButtons = document.querySelectorAll('.i-link');
    let lightBox = document.querySelector('.lightbox');

    function renderComboMatch(match) {
        return `<ul class="i-combo">
                ${match.map(item => `<li>${item}</li>`).join("")}
                </ul>` 
    }

    function parseUserData(thing) {
        let targetDiv = lightBox.querySelector('.lb-content');
        let targetImg = lightBox.querySelector('img');
        let bioContent = `
        <p>${thing.why}</p>
        <h4>My ranking: ${thing.placement}</h4>
        <h4>Recommendations: ${thing.recommendation}</h4>
        <h4>Best combos: </h4>
        <! -- loop thru social media stuff here -->
        ${renderComboMatch(thing.combo)}
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = thing.currentSrc;

        lightBox.classList.add('show-lb');

    }

    function getUserData(event) {
        event.preventDefault();
        // debugger;
        // 1,2,3 depending on which anchor tag you click
        let url = `/${this.getAttribute(`href`)}`,
            currentImg = this.previousElementSibling.getAttribute('src');

        fetch(url)
        // prevent default, no changing page
        .then(res => res.json())
        .then(data =>{ 
            console.log(data);
            data.currentSrc = currentImg;
            parseUserData(data);
        })
        .catch((err) => console.log(err));
    }
    
        userButtons.forEach(button => button.addEventListener('click', getUserData));

        lightBox.querySelector(".close").addEventListener("click", function() {
            lightBox.classList.remove("show-lb");
        });

})();
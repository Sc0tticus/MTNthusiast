const searchParams = new URLSearchParams(window.location.search);

const yearsQuery = searchParams.get('years');
const ratingsQuery = searchParams.get('ratings');
const rateQuery = searchParams.get('rate');

const dropdown1 = document.querySelector('#dropdown1');
const dropdown2 = document.querySelector('#dropdown2');
const dropdown3 = document.querySelector('#dropdown3');

const baseURL = 'http://localhost:3000';

let guidesURL = `${baseURL}/guides`;

if (yearsQuery){
  guidesURL = `${guidesURL}?years=${yearsQuery}`;
}
if (ratingsQuery){
  guidesURL = `${guidesURL}?ratings=${ratingsQuery}`;
}
if (rateQuery){
  guidesURL = `${guidesURL}?rate=${rateQuery}`;
}

fetch(guidesURL)
  .then(response => response.json())
  .then(showGuides)

fetch(guidesURL)
  .then(response => response.json())
  .then(showGuideOptions) 

  const guidesList = document.getElementById('guides-list')

  function showGuides(guides){
    guides.forEach(guide => {

      let li = document.createElement('li')
      li.innerHTML = `<a href='guidesShow.html?id=${guide.id}'>${guide.name}</a>` 
      guidesList.appendChild(li)
    })
  }

  function showGuideOptions(guides){
    guides.forEach(guide => {
      addOption(guide.about, dropdown1)
      addOption(guide.rating, dropdown2)
      addOption(guide.rate, dropdown3)
    })
  }

  function addOption(element, dropdown) {
    let option = document.createElement('option')
    option.innerText = element
    option.value = element
    dropdown.appendChild(option)
  }

  
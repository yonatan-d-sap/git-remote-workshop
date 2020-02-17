function generateTableHead (table, data) {
  let thead = table.createTHead()
  let row = thead.insertRow()
  for (let key of data) {
    let th = document.createElement('th')
    let text = document.createTextNode(key)
    th.appendChild(text)
    row.appendChild(th)
  }
}

function generateTable (table, data) {
  for (let element of data) {
    let row = table.insertRow()
    for (key in element) {
      let cell = row.insertCell()
      let text = document.createTextNode(element[key])
      cell.appendChild(text)
    }
  }
}

fetch('data.json')
  .then(response => response.json())
  .then(json => {
    console.log(json)
    let table = document.querySelector('table')
    console.log(json['flower_data'][0])
    let data = Object.keys(json['flower_data'][0])
    console.log(data)

    generateTableHead(table, data)
    generateTable(table, json['flower_data'])
  })

document.getElementById('boton').onclick = function(){
  alert('Aciar Nahuel\nAudero Ignacio\nKibysz Aaron\nMartinez Chiappetta Francisco')
}
function mostrarGif(){
  const gif = document.getElementById('gif');
  gif.style.display = 'block'

  const gifImage = document.getElementById('gifImage')
  gifImage.addEventListener('click', function(){
    gif.style.display = 'none';
  });
}
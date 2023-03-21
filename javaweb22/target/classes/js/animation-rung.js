	const shakeElement = document.querySelector('.shake-element');
			
				function shake() {
				  shakeElement.classList.add('shake-animation');
				  setTimeout(function() {
				    shakeElement.classList.remove('shake-animation');
				  }, 500);
				}
			
				setInterval(shake, 2000);
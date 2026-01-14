# Digital-Holography-Mini
Digital Holography Mini Project

To run a simulation of digital holography on an optical field affected by atmospheric turbulence, run GenHologram.m

Simulates atmospheric turbulence through a 1-layer Kolmogorov Phase Screen.

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/3beadb67-6db6-4682-ba60-d3f7d7006d91" />
<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/78559522-eda2-4e63-b0f5-88ede63c4943" />

Then, we calculate the field at the pupil using Fresnel propagation. At the edge of the pupil, we cut off the field. 

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/304ce69d-9718-48cf-ae2e-9ec0fb3d50bf" />
<img width="577" height="742" alt="image" src="https://github.com/user-attachments/assets/674cd729-fbd1-43fe-977b-5d02ce08d73d" />

We can then get an interferogram by interfering with a tilted reference beam. 

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/9be25e80-c13a-4246-b221-cb4a27d331af" />

With this intensity-only interferogram on the focal plane array, a Fourier Transform reveals the tilted clones of the aperture field. 

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/d1d738b4-61f7-4c38-a9af-3e33d75d972e" />

The tilted clones of the aperture field fourier transform can be cropped and centered. After a FFT, the original aperture field is recovered. 

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/de8021d6-3ae9-40a9-84f5-23dd14f53214" />
<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/0fe4f1a6-ff37-4f02-bb36-98beec119ae0" />

Compare to the original phase at the aperture:

<img width="577" height="371" alt="image" src="https://github.com/user-attachments/assets/304ce69d-9718-48cf-ae2e-9ec0fb3d50bf" />

<b>Eine kurze Anleitung um Webmin auf dem Raspberry Pi zu installieren</b>
<br>
<br>
<li>Paket Quelle hinzufügen</li>
<br>
<p>Zunächst wird die Datei "sources.list" mit Nano geöffnet und dort wird folgendes eingetragen. Anschließend wird das ganze mit [STRG+O] gespeichert
<p>und mit [STRG+O] wird das Programm und die Datei verlassen.</p>
<br>
<p><code>sudo nano /etc/apt/sources.list</code></p>
<br>
<p><code>deb http://download.webmin.com/download/repository sarge contrib</code></p>
<br>
<br>
<p><li>Webmin über Apt installieren</li>
<br>
  <br>
<p><code>sudo apt update && wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add && sudo apt update && sudo apt install webmin -y</code></p>
<br>
<br>
<p>Ist dieser Vorgang abgeschlossen dann erreicht man Webmin über folgende Adresse:</p>
<br>
<a href="https://127.0.0.1:10000"/>https://127.0.0.1:10000</a>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>Netflix</title>
</head>
<body>
    <header>
        <div class="nav">
            <img src="img/netflix.svg" alt="Netflix" draggable="false" />
            <a href="login/Login.aspx" draggable="false" class="login">Accedi</a>
        </div>
    </header>
    <main>
        <div class="email-login">
            <div class="text-login">
                <h1>Film, serie TV e tanto altro. Senza limiti.</h1>
                <h2>Guarda ciò che vuoi ovunque. Disdici quando vuoi.</h2>
                <p>
                    Vuoi guardare Netflix? Inserisci l'indirizzo email per abbonarti o riattivare il tuo abbonamento.
                </p>
            </div>
            <div class="form">
                <form>
                    <input type="email" placeholder="Email" class="input" />
                    <button>Inizia</button>
                </form>
            </div>

        </div>

        <div class="gradient"></div>
    </main>

    <section class="section-tv">
        <div class="container">
            <div class="grid">
                <div class="text-info">
                    <h1>Goditi Netflix sulla tua 
                        TV.</h1>
                    <p>
                        Guarda Netflix su smart TV, Playstation, Xbox, Chromecast, Apple TV, 
                        lettori Blu-ray e molti altri dispositivi.
                    </p>
                </div>
                <div class="config-img">
                    <img src="img/tv.png" alt="tv Netflix" />
                    <video class="tv-video" autoplay playsinline muted loop>
                        <source
                            src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-tv-0819.m4v" />
                    </video>
                </div>
            </div>
        </div>
    </section>
    <section class="section-dowload">
        <div class="container">
            <div class="grid">
                <div class="text-info">
                    <h1>Scarica le tue serie da 
                        guardare offline.</h1>
                    <p>
                        Salva facilmente i tuoi preferiti così avrai 
                        sempre qualcosa da guardare.
                    </p>
                </div>
                <div class="config-img">
                    <img src="img/el.jpg" alt="tv Netflix" />
                    <div class="cardanimation">
                        <div class="cardanimation-img">
                            <img src="img/boxshot.png" alt="stranger things" />
                        </div>
                        <div class="cardanimation-text">
                            <h2>Stranger Things</h2>
                            <p>Download in corso...</p>
                        </div>
                        <div class="animation-icon"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-portable">
        <div class="container">
            <div class="grid">
                <div class="text-info">
                    <h1>Guarda Netflix 
                        ovunque.</h1>
                    <p>
                        Cellulare, tablet, laptop e TV: scegli tu cosa 
                        usare per guardare in streaming film e serie TV 
                        senza limiti e senza spendere di più.
                    </p>
                </div>
                <div class="config-img">
                    <img src="img/device-pile.png" alt="device plataform" />
                    <video class="portable-video" autoplay playsinline muted loop>
                        <source
                            src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-devices.m4v" />
                    </video>
                </div>
            </div>
        </div>
    </section>
    <section class="section-kids">
        <div class="container">
            <div class="grid">
                <div class="text-info">
                    <h1>Crea profili per i 
                        bambini.</h1>
                    <p>
                        I bambini scoprono nuove avventure in 
                        compagnia dei loro personaggi preferiti in uno 
                        spazio tutto loro già incluso nel tuo 
                        abbonamento.
                    </p>
                </div>
                <div class="img-infantil">
                    <img src="img/infantil.png" alt="tv Netflix" />
                </div>
            </div>
        </div>
    </section>

    <footer>   
        <table>
            <tr>
                <td>Domande frequenti</td>
                 <td>Centro assistenza</td>
                 <td>Account</td>
                 <td>Media Center</td>
            </tr>
             <tr>
                <td>Rapporti con gli
                    investitori
                </td>
                 <td>Opportunità di lavoro</td>
                 <td>Riscatta carte regalo</td>
                 <td>Acquista carte regalo</td>
            </tr>
             <tr>
                <td>Come guardare netflix</td>
                 <td>Condizioni di utilizzo</td>
                 <td>Privacy</td>
                 <td>Preferenze per i cookie</td>
            </tr>
             <tr>
                <td>Informazioni sull'azienda</td>
                 <td>Contattaci</td>
                 <td>Test di velocità</td>
                 <td>Garanzia legale</td>
            </tr>
             <tr>
                <td>note legali</td>
                 <td>Solo su Netflix</td>
                 <td> </td>
                 <td> </td>
            </tr>
        </table>
        <p>Copyryght-© 2022 Netflix Italia</p>
    </footer>
</body>
</html>

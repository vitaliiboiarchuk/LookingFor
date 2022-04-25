const select = document.getElementById('site');

document.getElementById("button").onclick = function(){
    const value = select.value
    if (value === "Warsaw")
    {
        window.location.href = "/event/warsaw";
    }
    else if (value === "Krakow")
    {
        window.location.href = "/event/krakow";
    }
    else if (value === "Gdansk")
    {
        window.location.href = "/event/gdansk";
    }
    else if (value === "Wroclaw")
    {
        window.location.href = "/event/wroclaw";
    }
};
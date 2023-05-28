-- calcul de proba d'un jeu de 52 cartes
-- afficher propa d'avoir au moins une pair quelconque
local proba_pair;

function love.load()
  proba_pair = 0;
  cards = {{"K","H"}, {"6","C"}, {"10","S"}, {"3","S"}, {"2","S"}, {"5","S"}, {"4","S"}}; -- {{V,C},...}


  print("fin");
end

function love.update(dt)
  -- calcul proba pair quelconques

end

function love.draw()
  love.graphics.print('Probabilité d\'avoir une pair quelconque: '.. proba_pair .. "%", 20, 20);
end






























--determine la puissance d'une main
function pokerHand(cards) --[KH, 6C, 10S, 3S, 2S, 5S, 4S]
  pokerhand = ""; -- puissance de la main
  hand = {}; -- main potentiel
  nb_H = 0; -- nombre de coeur
  nb_C = 0; -- nombre de trefle
  nb_S = 0; -- nombre de pique
  nb_D = 0; -- nombre de carreau

  -- trier les cartes de bases dans l'ordre croissant des valeurs 2-10,J,Q,K,A
  cards = sortHand(cards);

  -- high hand, pair, two pairs, three of a kind, full, four of a kind 

  -- flush

  -- sraight, royal

  return pokerhand, hand;
end

function sortHand(cards)
  cards_res = {};
  for n,card in ipairs(cards) do
    value = numericalValue(card[1]);
    i = 1;
    infOrEq = true;
    while i < n and infOrEq do
      infOrEq = (value > numericalValue(cards_res[i][1]));
      i = i + 1;
    end
    if n ~= 1 and not infOrEq then i = i - 1 end
    table.insert(cards_res, i, card);
  end
  return cards_res
end

function numericalValue(value)
  if value == "J" then return 11 end
  if value == "Q" then return 12 end
  if value == "K" then return 13 end
  if value == "A" then return 14 end
  return tonumber(value)
end














--

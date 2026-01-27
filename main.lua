-- Copyright (C) 2026 Padros
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <https://www.gnu.org/licenses/>.




-- Amaç İhazı:
-- Bu proje Ocak 27 2026 itibariyle yalnızca yürüme mekaniklerine sahiptir.
-- Bu projeyi hobi ve Love2d öğreniminden edindiğim bilgiler çerçevesinde geliştireceğim.
-- Şu anda aklımda herhangi bir oyun prototipi bulunmamaktadır. Yalnızca öğrenimimden edindiğim bilgilerin,
-- bir tezahürü mahiyetinde bu projeyi başlatıyorum.

-- V: 0.1



function love.load() -- Love2d'nin başlangıçta okuyup ardından kaydettiği veriler yığınıdır. Başlangıçta bir kere okunur, sonradan love.update fonksiyonu içerisinde buradaki değer yada okunan komutlar için düzenleme yada silme işlemi uygulanabilir.
  karakter = {
    konum_x = 100,
    konum_y = 100,
    hiz = 150,
    genislik = 15,
  }
end

function love.update(dt) -- Oyun açık olduğu sürece güncellenen funsiyondur.
  if love.keyboard.isDown("d") and karakter.konum_x < (love.graphics.getWidth() - karakter.genislik) then
    karakter.konum_x = karakter.konum_x + (karakter.hiz * dt)
  end
  if love.keyboard.isDown("s") and karakter.konum_y < (love.graphics.getHeight() - karakter.genislik) then
    karakter.konum_y = karakter.konum_y + (karakter.hiz * dt)
  end

  if love.keyboard.isDown("a") and karakter.konum_x > karakter.genislik then
    karakter.konum_x = karakter.konum_x - (karakter.hiz * dt)
  end
  if love.keyboard.isDown("w") and karakter.konum_y > karakter.genislik then
    karakter.konum_y = karakter.konum_y - (karakter.hiz * dt)
  end
end

function love.draw() -- Kullanıcıya görüntü sunan fonksiyon.
  love.graphics.print(hello, 400, 300)
  love.graphics.circle("fill", karakter.konum_x, karakter.konum_y, karakter.genislik, 50)
end
